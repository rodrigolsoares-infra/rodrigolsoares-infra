# Importa módulo do Active Directory
Import-Module ActiveDirectory

# Define o período de inatividade (dias) e o caminho do relatório
$diasInativo = 30
$dataCorte = (Get-Date).AddDays(-$diasInativo)
$relatorioPath = "C:\Scripts\04-auditoria-contas-inativas\contas_inativas.csv"

# Busca contas ativas sem logon há mais de 30 dias ou que nunca se logaram
$contasInativas = Get-ADUser -Filter {Enabled -eq $true} -Properties LastLogonDate | 
    Where-Object { ($_.LastLogonDate -lt $dataCorte) -or ($_.LastLogonDate -eq $null) }

if ($contasInativas) {
    # Exporta relatório detalhado
    $contasInativas | Select-Object Name, SamAccountName, UserPrincipalName, LastLogonDate | 
        Export-Csv -Path $relatorioPath -NoTypeInformation -Encoding UTF8

    Write-Host "Relatório de contas inativas gerado em: $relatorioPath" -ForegroundColor Yellow

    # Varre as contas desativando por segurança
    foreach ($user in $contasInativas) {
        Disable-ADAccount -Identity $user.SamAccountName
        Write-Host "Conta desativada por inatividade: $($user.SamAccountName)" -ForegroundColor Red
    }
} else {
    Write-Host "Nenhuma conta inativa encontrada no domínio." -ForegroundColor Green
}
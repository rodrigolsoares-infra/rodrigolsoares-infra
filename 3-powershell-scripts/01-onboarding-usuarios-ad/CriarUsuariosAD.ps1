# Importa o módulo do Active Directory
Import-Module ActiveDirectory

# Define o caminho do arquivo CSV e o domínio padrão
$csvPath = "C:\Scripts\usuarios.csv"
$domain = "techcorp.local"
$senhaPadrao = ConvertTo-SecureString "Senha#Mudar2026" -AsPlainText -Force

# Importa as informações do arquivo CSV
$usuarios = Import-Csv -Path $csvPath -Delimiter ","

foreach ($user in $usuarios) {
    # Monta o DistinguishName (DN) da OU de destino dentro de TechCorp
    $ouPath = "OU=$($user.OU),OU=TechCorp,DC=techcorp,DC=local"
    $userPrincipalName = "$($user.SamAccountName)@$domain"
    $displayName = "$($user.Firstname) $($user.Lastname)"

    # Verifica se o usuário já existe antes de criar
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$($user.SamAccountName)'")) {
        New-ADUser `
            -Name $displayName `
            -GivenName $user.Firstname `
            -Surname $user.Lastname `
            -SamAccountName $user.SamAccountName `
            -UserPrincipalName $userPrincipalName `
            -Path $ouPath `
            -AccountPassword $senhaPadrao `
            -Enabled $true `
            -ChangePasswordAtLogon $true `
            -Department $user.Department

        Write-Host "Usuário $($user.SamAccountName) criado com sucesso na $ouPath!" -ForegroundColor Green
    } else {
        Write-Host "Usuário $($user.SamAccountName) já existe no AD." -ForegroundColor Yellow
    }
}
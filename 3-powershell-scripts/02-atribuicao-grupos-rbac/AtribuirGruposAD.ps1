# Importa módulo do Active Directory
Import-Module ActiveDirectory

# Mapeamento de OUs para seus respectivos Grupos RBAC
$grupoMapeamento = @{
    "OU_Financeiro" = "GRP_FINANCEIRO"
    "OU_RH"         = "GRP_RH"
    "OU_Vendas"     = "GRP_Vendas_RW"
}

foreach ($ou in $grupoMapeamento.Keys) {
    $grupoDestino = $grupoMapeamento[$ou]
    $ouPath = "OU=$ou,OU=TechCorp,DC=techcorp,DC=local"
    
    # Busca todos os usuários da OU
    $usuarios = Get-ADUser -Filter * -SearchBase $ouPath

    foreach ($user in $usuarios) {
        # Verifica se o usuário já é membro do grupo
        $isMember = Get-ADGroupMember -Identity $grupoDestino | Where-Object { $_.SamAccountName -eq $user.SamAccountName }

        if (-not $isMember) {
            Add-ADGroupMember -Identity $grupoDestino -Members $user.SamAccountName
            Write-Host "Usuário $($user.SamAccountName) adicionado ao grupo $grupoDestino!" -ForegroundColor Green
        } else {
            Write-Host "Usuário $($user.SamAccountName) já pertence ao grupo $grupoDestino." -ForegroundColor Yellow
        }
    }
}
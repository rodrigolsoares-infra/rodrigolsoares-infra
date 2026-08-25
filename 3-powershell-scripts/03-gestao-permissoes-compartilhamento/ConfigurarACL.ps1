# Define o caminho raiz dos compartilhamentos
$raiz = "C:\Empresa"

# Mapeamento das pastas e seus respetivos grupos de acesso
$pastas = @{
    "Financeiro" = "GRP_FINANCEIRO"
    "RH"         = "GRP_RH"
    "Vendas"     = "GRP_Vendas_RW"
}

foreach ($pasta in $pastas.Keys) {
    $caminhoCompleto = Join-Path -Path $raiz -ChildPath $pasta
    $grupo = $pastas[$pasta]

    # Garante que a pasta exista
    if (-not (Test-Path -Path $caminhoCompleto)) {
        New-Item -Path $caminhoCompleto -ItemType Directory | Out-Null
    }

    # Obtém a ACL atual do diretório
    $acl = Get-Acl -Path $caminhoCompleto

    # Define a regra de acesso NTFS (Modificar / ReadWrite)
    $ar = New-Object System.Security.AccessControl.FileSystemAccessRule(
        "TECHCORP\$grupo",
        "Modify",
        "ContainerInherit, ObjectInherit",
        "None",
        "Allow"
    )

    # Aplica a nova permissão e salva na pasta
    $acl.AddAccessRule($ar)
    Set-Acl -Path $caminhoCompleto -AclObject $acl

    Write-Host "Permissões NTFS atualizadas com sucesso para $caminhoCompleto ($grupo)!" -ForegroundColor Green
}
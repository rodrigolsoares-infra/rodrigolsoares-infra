Write-Host "=============================================" -ForegroundColor Yellow
Write-Host "   FERRAMENTA DE MANUTENCAO RAPIDA - N1      " -ForegroundColor Yellow
Write-Host "=============================================" -ForegroundColor Yellow

# 1. Limpeza de DNS Cache
Write-Host "`n[1/3] Limpando cache de DNS..." -ForegroundColor Cyan
Clear-DnsClientCache
Write-Host "Cache de DNS limpo com sucesso!" -ForegroundColor Green

# 2. Limpeza de Arquivos Temporarios
Write-Host "`n[2/3] Removendo arquivos temporarios do sistema..." -ForegroundColor Cyan
$tempPath = "C:\Windows\Temp\*"
Remove-Item -Path $tempPath -Recurse -Force -ErrorAction SilentlyContinue
Write-Host "Limpeza de temporarios concluida!" -ForegroundColor Green

# 3. Informacoes do Sistema e Rede
Write-Host "`n[3/3] Coletando informacoes do ativo..." -ForegroundColor Cyan
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notlike "*Loopback*"}).IPAddress
$hostname = $env:COMPUTERNAME

Write-Host "Hostname: $hostname" -ForegroundColor White
Write-Host "Endereco IP: $ip" -ForegroundColor White

Write-Host "`nManutencao preventiva concluida com sucesso!" -ForegroundColor Green
# Lista de servidores e servicos criticos para validacao
$servidores = @(
    @{ Nome = "SRV-DC01-DNS"; IP = "192.168.10.10"; Porta = 53 },
    @{ Nome = "SRV-DC01-SMB"; IP = "192.168.10.10"; Porta = 445 }
)

Write-Host "=============================================" -ForegroundColor Cyan
Write-Host "   RELATORIO DE SAUDE DA INFRAESTRUTURA TI   " -ForegroundColor Cyan
Write-Host "=============================================" -ForegroundColor Cyan

foreach ($srv in $servidores) {
    # Teste de Ping (ICMP)
    $ping = Test-Connection -ComputerName $srv.IP -Count 1 -Quiet

    # Teste de Porta de Servico (TCP)
    $portTest = Test-NetConnection -ComputerName $srv.IP -Port $srv.Porta -InformationLevel Quiet

    if ($ping -and $portTest) {
        Write-Host "[OK] $($srv.Nome) ($($srv.IP)) - Ping e Porta $($srv.Porta) OPERACIONAIS" -ForegroundColor Green
    } else {
        Write-Host "[ALERTA] $($srv.Nome) ($($srv.IP)) - FALHA DE CONECTIVIDADE OU SERVICO" -ForegroundColor Red
    }
}
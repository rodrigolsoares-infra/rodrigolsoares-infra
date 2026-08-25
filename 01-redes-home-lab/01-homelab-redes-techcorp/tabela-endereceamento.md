# 📊 Tabela de Endereçamento IP da Rede Local

* **Rede:** `192.168.1.0/24`
* **Máscara de Sub-rede:** `255.255.255.0`

| Dispositivo | Nome de Exibição | Interface | Endereço IP | Origem / Atribuição | Função no Sistema |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Roteador** | `Roteador-Borda` | `Gi0/0` | `192.168.1.1` | Estático | Gateway Padrão da Rede |
| **Servidor** | `Servidor-Infra` | `Fa0` | `192.168.1.2` | Estático | Servidor DHCP e DNS |
| **Impressora** | `Impressora-Corp` | `Fa0` | `192.168.1.10` | Estático | Recurso Compartilhado |
| **Estações** | `PC-FIN-01` a `02` | `Fa0` | `192.168.1.100+` | Dinâmico (DHCP) | Setor Financeiro |
| **Estações** | `PC-VEN-01` a `03` | `Fa0` | `192.168.1.100+` | Dinâmico (DHCP) | Setor de Vendas |
| **Estações** | `PC-RH-01` a `02` | `Fa0` | `192.168.1.100+` | Dinâmico (DHCP) | Recursos Humanos |
| **Estações** | `PC-TI-01` a `02` | `Fa0` | `192.168.1.100+` | Dinâmico (DHCP) | Suporte Técnico / TI |
| **Estação** | `PC-DIR-01` | `Fa0` | `192.168.1.100+` | Dinâmico (DHCP) | Diretoria |

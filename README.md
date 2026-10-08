# Olá, eu sou o Rodrigo 👋
**Analista de Suporte Técnico N2 | Redes, NOC & Monitoramento**

📍 Timbó, Santa Catarina | Disponível para atuação Presencial, Híbrida ou Remota

### 👤 Sobre Mim

Profissional focado em **Suporte N1/N2, Infraestrutura de Redes e Operações de NOC / Monitoramento**, com sólida bagagem corporativa em auditoria de processos, conformidade e resolução de problemas.

Atualmente, dedico minha evolução técnica ao desenvolvimento de **laboratórios práticos de alta complexidade**, simulando ambientes corporativos reais:
- **Redes & Conectividade:** Arquitetura hierárquica Cisco (L2/L3), roteamento inter-VLAN, Trunking (802.1Q), redundância L2 (STP) e links WAN multi-site.
- **Observabilidade & NOC:** Implementação e gestão de monitoramento em tempo real com **Zabbix Server 7.0** e **Grafana Enterprise** (métricas de ativos de rede e servidores, triggers e alertas visuais).
- **Gestão de Identidades & Sistemas:** Active Directory DS, infraestrutura híbrida (Microsoft Entra ID) e automação via PowerShell.

Busco oportunidades como **Assistente / Analista de Monitoramento (NOC)** e **Analista de Suporte / Redes**, aplicando diagnósticos ágeis (troubleshooting L1/L2) para garantir alta disponibilidade e cumprimento de SLAs.


Seja bem-vindo(a) ao meu portfólio prático de Tecnologia da Informação.

---

### 🧰 Mapeamento de Competências & Tecnologias

- Infraestrutura & Suporte: Active Directory (AD DS), Gestão de OUs, Diretivas de Grupo (GPOs), Permissões NTFS, File Server, DHCP, DNS e Windows Server.
- Nuvem & Identidades: Fundamentos de Microsoft Azure e Microsoft Entra ID (Azure AD), Entra Connect (PHS, Password Writeback).
- Automação & Processos: Scripts em PowerShell para criação em massa de usuários e automação de rotinas operacionais.
- Observabilidade & Monitoramento: Zabbix Server 7.0, Grafana Enterprise, Métricas em Tempo Real (CPU, RAM, Disco), Thresholds de Alerta Visual e Gestão de Triggers/Problems.
- Redes & Cibersegurança: Arquitetura de Redes Hierárquica (Core/Access), Roteamento Inter-VLAN (SVIs), Switches L2/L3, Trunking (IEEE 802.1Q), Redundância e Proteção L2 (Spanning Tree Protocol - STP), Sub-redes IPv4 (/24 e /30), Links WAN (Serial/Estático), Protocolos TCP/IP, VPN, GPO, Arquitetura AGDLP, Tiering Model & Least Privilege. Segurança Cibernética e Mitigação de Riscos.
- Processos & ITSM: Atendimento a chamados, Documentação Técnica (SOPs/POPs), Diagnóstico de Incidentes (Troubleshooting N1/N2) e Gestão de SLA.
- Virtualização & Ferramentas: Hyper-V, Linux (Debian/Ubuntu), PostgreSQL, Apache2, Cisco Packet Tracer, Wireshark, Zabbix, Grafana, Git/GitHub.

---

### 🚀 Projetos em Destaque

### 🌟 1. [Gestão Híbrida de Identidades com AD DS, PowerShell e Microsoft Entra ID](https://github.com/rodrigolsoares-infra/suporte-infra-hibrida)
> *Laboratório prático focado na estruturação de um ambiente corporativo híbrido, combinando automação on-premises via PowerShell, políticas avançadas de segurança e sincronização de identidades com a nuvem Microsoft.*

**Destaques Técnicos do Projeto:**
* **Automação com PowerShell:** Provisionamento em massa de identidades e grupos via scripts `.ps1` consumindo base de dados `.csv`.
* **Segurança e Hardening (GPOs):** Aplicação do modelo de menor privilégio (Least Privilege), bloqueio de mídias removíveis (USB), e mapeamento dinâmico de unidades de rede (`S:`).
* **Integração Cloud (Entra Connect):** Sincronização por OUs específicas (OU-based filtering), configuração de sufixo UPN customizado e Password Hash Sync (PHS).
* **Documentação Padronizada:** Separação modular de evidências, topologia da rede e acervo técnico de scripts e diretivas.

📂 **[Acesse o Repositório do Projeto](https://github.com/rodrigolsoares-infra/suporte-infra-hibrida)** | 📄 **[Acervo de Scripts](https://github.com/rodrigolsoares-infra/suporte-infra-hibrida/blob/main/docs/listar-scripts.md)** | 🛡️ **[Lista de GPOs](https://github.com/rodrigolsoares-infra/suporte-infra-hibrida/blob/main/docs/listar-gpos.md)**

---

### 📊 2. [Monitoramento & Observabilidade com Zabbix 7.0 e Grafana](https://github.com/rodrigolsoares-infra/monitoramento)
> *Implantação e integração de ambiente de monitoramento em tempo real em VM Debian (`MON-01`), focado em observabilidade NOC e resolução avançada de incidentes.*
* **Tecnologias:** Zabbix Server 7.0, Grafana Enterprise, PostgreSQL, Apache2, Linux Debian, Hyper-V.
* **Destaques & Troubleshooting:**
  * Construção de dashboards interativos no Grafana com métricas de CPU, RAM, Disco e *Zabbix Problems*.
  * Implementação de alertas visuais (*Thresholds*) para métricas críticas de infraestrutura.
  * Resolução de incidentes de autenticação via banco (hash Bcrypt no PostgreSQL) e reparo de pilha de rede em nível de kernel no host.

---

### 🌐 3. [Infraestrutura de Rede Corporativa Multi-Site (Sede & Filial)](https://github.com/rodrigolsoares-infra/Lab-redes)
> *Projeto concluído de arquitetura e simulação de rede corporativa híbrida de alta disponibilidade desenvolvida no **Cisco Packet Tracer**, interligando Sede e Filial por meio de links WAN dedicados, segmentação L2/L3 e redundância.*

* **Arquitetura Hierárquica & L3 Routing:** Implementação do modelo Cisco de 3 camadas (Core, Distribuição e Acesso) com roteamento inter-VLAN via Switches Multicamada (SVIs) e roteamento estático WAN entre bordas.
* **Segmentação & Redundância L2:** Divisão lógica por departamentos (RH, Vendas, Financeiro) com Trunking (802.1Q) e prevenção de loops/failover automático via Spanning Tree Protocol (STP).
* **Serviços & Endereçamento:** Servidores DHCP configurados nos switches L3, reservas estáticas para ativos de impressão e endereçamento IPv4 estruturado (`/24` e sub-redes `/30`).

---

### 🎯 Estudos Continuos & Certificações

* 🎓 **Formação:** CST em Análise e Desenvolvimento de Sistemas | CST em Gestão de Segurança Privada.
* 📜 **Certificações:** Google IT Support Professional | Cyber Academy (FEBRABAN/Accenture) | Introduction to Cybersecurity (Cisco).
* 📌 **Em preparação:** Cisco CCST Networking & Cybersecurity

---

### 📬 Vamos nos conectar?

* **LinkedIn:** [https://www.linkedin.com/in/rodrigolzsoares/](https://linkedin.com)
* **GitHub:** [github.com/rodrigolsoares-infra](https://github.com/rodrigolsoares-infra)
* **Email:** [rodrigo.l.soares@outmail.com]

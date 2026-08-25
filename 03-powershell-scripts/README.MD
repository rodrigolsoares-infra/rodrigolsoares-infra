# Automação de Infraestrutura e Suporte com PowerShell

## 🎯 Objetivo Geral
Desenvolver e estruturar um ecossistema de automação em PowerShell para otimizar rotinas operacionais de TI, cobrindo desde o gerenciamento do ciclo de vida de usuários no Active Directory e controle de acesso a arquivos até monitoramento de saúde de servidores e ferramentas de suporte N1.

---

## 📂 Subprojetos do Módulo

| Projeto | Descrição |
| :--- | :--- |
| **[01-onboarding-usuarios-ad](./01-onboarding-usuarios-ad)** | Provisionamento em lote de usuários no Active Directory via CSV. |
| **[04-auditoria-contas-inativas](./02-auditoria-contas-inativas)** | Relatórios em CSV e desativação preventiva de contas inativas há mais de 30 dias. |
| **[05-monitoramento-saude-servidores](./03-monitoramento-saude-servidores)** | Script de Health Check para testes de Ping/ICMP e portas de serviços (DNS/SMB). |
| **[06-ferramenta-manutencao-suporte](./04-ferramenta-manutencao-suporte)** | Utilitário One-Click para limpeza de DNS, arquivos temporários e inventário rápido. |

---

## 🛠️ Tecnologias e Conceitos Utilizados
* **PowerShell 5.1 & Módulo ActiveDirectory**
* **Gerenciamento de Identidades (IAM & RBAC)**
* **Segurança NTFS / Listas de Controle de Acesso (ACLs)**
* **Auditoria de TI & Governança de Acessos**
* **Testes e Diagnóstico de Conectividade TCP/IP**
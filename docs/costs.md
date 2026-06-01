# Custos & SLA

Esta seção apresenta uma estimativa dos custos operacionais e da disponibilidade esperada da solução desenvolvida.

Como o projeto foi desenvolvido para fins acadêmicos, toda a infraestrutura foi executada localmente durante o desenvolvimento. Dessa forma, não houve custos reais com serviços de nuvem durante a implementação.

---

# Custos atuais do projeto

## Ambiente de desenvolvimento

Toda a aplicação foi executada localmente utilizando:

* Java 21
* Spring Boot
* FastAPI
* MySQL
* Docker (quando aplicável)
* GitHub Pages
* GitHub Actions

Como esses componentes foram executados em ambiente local ou utilizando planos gratuitos, o custo direto do projeto foi:

| Serviço        | Custo                           |
| -------------- | ------------------------------- |
| GitHub Pages   | Gratuito                        |
| GitHub Actions | Gratuito (limites educacionais) |
| MySQL Local    | Gratuito                        |
| Spring Boot    | Gratuito                        |
| FastAPI        | Gratuito                        |
| Docker Desktop | Gratuito para uso acadêmico     |
| Total          | $0/mês                          |

---

# Custos estimados para produção

Caso a solução fosse implantada em ambiente de produção, uma configuração mínima poderia utilizar:

| Serviço                | Configuração      | Custo estimado |
| ---------------------- | ----------------- | -------------- |
| Máquina Virtual        | 2 vCPU / 4 GB RAM | ~$20/mês       |
| Banco MySQL Gerenciado | db.t3.micro       | ~$15/mês       |
| Armazenamento          | 20 GB SSD         | ~$2/mês        |
| DNS e tráfego          | Básico            | ~$3/mês        |
| Total estimado         |                   | ~$40/mês       |

---

# Componentes com características de PaaS

## GitHub Pages

Responsável pela hospedagem da documentação do projeto.

Benefícios:

* HTTPS automático;
* disponibilidade gerenciada;
* integração com GitHub Actions;
* sem necessidade de servidor próprio.

---

## GitHub Actions

Responsável pela automação do processo de build e deploy da documentação.

Benefícios:

* execução automática dos pipelines;
* integração nativa com GitHub;
* sem gerenciamento de infraestrutura.

---

# SLA esperado

Como a aplicação foi executada localmente, não existe SLA formal durante o desenvolvimento.

Para fins de análise, consideramos os SLAs publicados pelos provedores utilizados.

| Serviço          | SLA estimado                     |
| ---------------- | -------------------------------- |
| GitHub Pages     | 99.9%                            |
| GitHub Actions   | 99.9%                            |
| MySQL Local      | Dependente da máquina hospedeira |
| APIs Spring Boot | Dependente da máquina hospedeira |

---

# Limitações atuais

A solução atual não possui:

* múltiplas zonas de disponibilidade;
* balanceamento de carga;
* failover automático;
* banco de dados replicado;
* auto scaling;
* monitoramento centralizado.

Essas características seriam adicionadas em uma versão voltada para produção.

---

# Evoluções futuras

Para aumentar disponibilidade e escalabilidade, as seguintes melhorias poderiam ser implementadas:

* hospedagem em Kubernetes (EKS ou GKE);
* banco de dados gerenciado (RDS);
* balanceamento de carga;
* cache distribuído (Redis);
* observabilidade com Prometheus e Grafana;
* pipelines completos de CI/CD.

---

# Conclusão

Por se tratar de um projeto acadêmico, a prioridade foi validar a arquitetura de microsserviços e a integração entre os serviços.

A solução atual apresenta custo praticamente nulo durante o desenvolvimento e pode ser evoluída para um ambiente de produção utilizando serviços gerenciados de nuvem quando necessário.

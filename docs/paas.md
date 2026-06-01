# PaaS

Esta seção apresenta os serviços do tipo Platform-as-a-Service (PaaS) utilizados no projeto, explicando quais responsabilidades foram delegadas aos provedores e quais permanecem sob responsabilidade da equipe.

## O que é PaaS

Platform-as-a-Service (PaaS) é um modelo de computação em nuvem no qual o provedor oferece uma plataforma pronta para execução e hospedagem de aplicações, abstraindo tarefas de infraestrutura como provisionamento de servidores, atualizações de sistema operacional, gerenciamento de disponibilidade e manutenção da plataforma.

Nesse modelo, a equipe concentra seus esforços no desenvolvimento da aplicação e das regras de negócio, enquanto o provedor gerencia a infraestrutura subjacente.

---

## Tecnologias PaaS utilizadas

### GitHub Pages

**Classificação:** PaaS (Static Site Hosting)

O GitHub Pages é utilizado para hospedar a documentação técnica do projeto desenvolvida com MkDocs.

#### Responsabilidades assumidas pelo GitHub

* Hospedagem da documentação estática.
* Distribuição global do conteúdo.
* Certificado HTTPS automático.
* Disponibilidade da plataforma.
* Integração com GitHub Actions para publicação automática.

#### Responsabilidades da equipe

* Produção do conteúdo da documentação.
* Configuração do MkDocs.
* Organização das páginas e estrutura documental.

---

### GitHub Actions

**Classificação:** PaaS (CI/CD as a Service)

O GitHub Actions é utilizado para automatizar o processo de build e publicação da documentação.

#### Responsabilidades assumidas pelo GitHub

* Execução dos workflows.
* Provisionamento dos runners.
* Disponibilidade do ambiente de execução.
* Gerenciamento da infraestrutura de CI/CD.

#### Responsabilidades da equipe

* Definição dos workflows.
* Configuração dos pipelines.
* Monitoramento dos resultados de build e deploy.

---

## Tecnologias que não são PaaS

| Tecnologia  | Categoria                 | Justificativa                                  |
| ----------- | ------------------------- | ---------------------------------------------- |
| Spring Boot | Framework                 | Utilizado para desenvolvimento das APIs Java   |
| FastAPI     | Framework                 | Utilizado para desenvolvimento da Exchange API |
| Docker      | Runtime                   | Responsável pelo empacotamento das aplicações  |
| MySQL       | Banco de dados            | Executado localmente durante o desenvolvimento |
| OpenFeign   | Biblioteca                | Comunicação entre microsserviços               |
| JWT         | Protocolo de autenticação | Responsável pela autenticação dos usuários     |

---

## Por que esse modelo foi adotado

A utilização de serviços PaaS permitiu simplificar o processo de desenvolvimento e entrega do projeto.

Os principais benefícios observados foram:

* redução do esforço operacional;
* automatização da publicação da documentação;
* disponibilidade de HTTPS sem configuração adicional;
* integração direta com o repositório Git;
* foco da equipe na implementação dos microsserviços.

Dessa forma, a equipe pôde concentrar seus esforços na construção das APIs e na integração entre os serviços, sem a necessidade de administrar servidores próprios.

---

## Resumo

| Tecnologia     | Classificação  | Justificativa                                                  |
| -------------- | -------------- | -------------------------------------------------------------- |
| GitHub Pages   | PaaS           | Hospedagem da documentação sem necessidade de servidor próprio |
| GitHub Actions | PaaS           | Execução automatizada de pipelines de build e deploy           |
| Spring Boot    | Framework      | Desenvolvimento das APIs Java                                  |
| FastAPI        | Framework      | Desenvolvimento da Exchange API                                |
| Docker         | Runtime        | Empacotamento dos serviços                                     |
| MySQL          | Banco de dados | Persistência de dados                                          |

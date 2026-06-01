# Store Platform

Bem-vindo à documentação oficial da **Store Platform**, uma plataforma de microsserviços desenvolvida para simular a operação de uma loja online baseada em serviços independentes e integrados.

O sistema é composto por três serviços principais:

- **Order API**: responsável pela criação e consulta de pedidos.
- **Product API**: responsável pelo cadastro e gerenciamento de produtos.
- **Exchange API**: responsável pela conversão de moedas e consulta de taxas externas.

Cada microsserviço possui responsabilidade bem definida, comunicação por API e autenticação baseada em JWT.

Link do repositório principal: [Root](https://github.com/insper-joaoamiguel/root-pma)

---

## Visão geral da plataforma

A arquitetura foi pensada para demonstrar os principais conceitos de microsserviços, incluindo:

- separação de responsabilidades;
- comunicação entre serviços;
- autenticação e autorização centralizadas;
- persistência de dados por serviço;
- integração com serviços externos;
- análise de desempenho e gargalos.

---

## Microsserviços

### Order API
Gerencia pedidos realizados pelos usuários autenticados.  
É o serviço central da plataforma, consumindo dados da Product API e da Exchange API para montar e validar os pedidos.

### Product API
Responsável pelo cadastro, consulta e remoção de produtos disponíveis na loja.

### Exchange API
Executa conversões monetárias e consulta valores de câmbio a partir de uma fonte externa.

---

## Objetivos do projeto

Este projeto foi desenvolvido com os seguintes objetivos:

- aplicar conceitos de arquitetura distribuída;
- implementar APIs RESTful em diferentes tecnologias;
- integrar autenticação via JWT;
- documentar o sistema de forma clara e organizada;
- identificar gargalos de desempenho;
- preparar a base para futuras evoluções da plataforma.

---

## Tecnologias utilizadas

- Java
- Spring Boot
- Spring Security
- Spring Data JPA
- OpenFeign
- MySQL
- FastAPI
- JWT
- MkDocs
- Material for MkDocs

---

## Estrutura da documentação

A documentação está organizada em seções para facilitar a navegação:

- **Arquitetura**: visão geral do sistema e relação entre os serviços;
- **Microserviços**: documentação individual de cada API;
- **Infraestrutura**: recursos de suporte e ambiente;
- **Bottlenecks**: principais gargalos encontrados;

---

## Como navegar

Use o menu lateral para acessar a documentação de cada serviço, ver detalhes de arquitetura e consultar os testes e gargalos analisados durante o desenvolvimento.
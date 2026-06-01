# Docker

A plataforma atualmente é executada utilizando **Docker** e **Docker Compose**, permitindo a execução local de todos os microsserviços de forma isolada e reproduzível.

## Visão geral

Toda a arquitetura da aplicação é composta por containers independentes que se comunicam através da rede Docker `pma-network`.

Os serviços são iniciados automaticamente por meio do arquivo `docker-compose.yaml`, responsável por orquestrar dependências, variáveis de ambiente e rede.

---

## Serviços executados

| Serviço | Responsabilidade | Porta |
|----------|-----------------|--------|
| Gateway Service | Ponto de entrada das requisições | 8080 |
| Exchange Service | Conversão de moedas | 8081 |
| Auth Service | Autenticação e emissão de JWT | 8082 |
| Account Service | Gerenciamento de contas | 8083 |
| Product Service | Gerenciamento de produtos | 8084 |
| Order Service | Gerenciamento de pedidos | 8086 |
| MySQL | Persistência de dados | 3306 |

---

## Rede Docker

Todos os containers são conectados à mesma rede:

```yaml
networks:
  pma-network:
    driver: bridge
```

Dessa forma os serviços podem se comunicar utilizando o nome do container como hostname.

### Exemplos

```text
http://auth-service:8082
http://product-service:8084
http://exchange-service:8081
http://account-service:8083
http://order-service:8086
http://mysql:3306
```

---

## Banco de dados

O sistema utiliza uma instância única do MySQL executando em container Docker.

### Credenciais

```text
Usuário: pma
Senha: pma123
```

### Persistência

Os dados são armazenados utilizando volume Docker:

```yaml
volumes:
  mysql-data:
```

Isso garante que os dados permaneçam disponíveis mesmo após reinicializações dos containers.

---

## Construção das imagens

Cada microsserviço possui seu próprio Dockerfile.

### Exemplo

```dockerfile
FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]
```

---

## Execução local

### Build das imagens

```bash
docker compose build
```

### Subida dos containers

```bash
docker compose up -d
```

### Verificar containers

```bash
docker ps
```

### Visualizar logs

```bash
docker compose logs -f
```

---

## Imagens geradas

As imagens da plataforma são publicadas no Docker Hub.

### Repositórios

```text
joaoamiguel/account-service
joaoamiguel/auth-service
joaoamiguel/product-service
joaoamiguel/exchange-service
joaoamiguel/gateway-service
order-service
mysql
```

---

## Fluxo de comunicação

```text
Cliente
   |
   v
Gateway Service
   |
   +--> Auth Service
   |
   +--> Account Service
   |
   +--> Product Service
   |
   +--> Order Service
               |
               +--> Product Service
               |
               +--> Exchange Service

MySQL
   |
   +--> Account Service
   +--> Product Service
   +--> Order Service
```

---

## Benefícios da abordagem

- isolamento entre serviços;
- ambiente reproduzível;
- facilidade de desenvolvimento local;
- implantação simplificada;
- compatibilidade futura com ambientes em nuvem.

---

## Próximos passos

Após validação local dos containers, as imagens Docker poderão ser publicadas em um registry e utilizadas para implantação em ambientes AWS.
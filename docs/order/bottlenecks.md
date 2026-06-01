# Bottlenecks

Esta documentacao destaca dois pontos de gargalo que foram escolhidos por serem simples de reproduzir e coerentes com o comportamento do sistema.

## 1. Listagem de pedidos sem paginacao

O endpoint `GET /orders` retorna todos os pedidos do usuario autenticado de uma vez.

### Motivo
Quando a quantidade de pedidos cresce, a resposta fica mais pesada. A API precisa consultar mais linhas no banco, montar mais objetos e transferir mais dados para o cliente.

### Efeito
- aumento do tempo de resposta;
- maior consumo de memoria;
- resposta mais pesada ao cliente;
- queda de desempenho com bases maiores.

### Como demonstrar
- cadastrar poucos pedidos e medir o tempo;
- repetir com mais registros;
- comparar a latencia percebida.

### Melhoria possivel
- paginação;
- filtros por data ou periodo;
- limites de retorno.

## 2. Criacao de pedido com chamadas externas em sequencia

O endpoint `POST /orders` depende da Product API para validar itens e da Exchange API para ajustar valores quando necessario.

### Motivo
Se o pedido tiver varios itens, a Order API pode realizar mais de uma chamada externa. Isso aumenta o tempo total de processamento.

### Efeito
- maior latencia;
- dependencia direta da disponibilidade das APIs externas;
- tempo de resposta cresce conforme o numero de itens.

### Como demonstrar
- enviar um pedido com 1 item;
- depois enviar um pedido com varios itens;
- comparar a diferenca de tempo.

### Melhoria possivel
- reduzir chamadas repetidas;
- cache para dados recorrentes;
- timeouts e fallback;
- consolidacao de consultas.

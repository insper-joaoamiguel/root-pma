# Testes

## Swagger

A validacao funcional pode ser feita pelo Swagger UI.

### Fluxo sugerido
1. autenticar com o token JWT do sistema;
2. testar `GET /orders`;
3. testar `POST /orders` com um produto valido;
4. testar `GET /orders/{id}`;
5. testar `GET /orders/{id}?currency=BRL`.

## Evidencias

As respostas esperadas mostram:

- criacao de pedido com sucesso;
- erro 404 quando o produto nao existe;
- retorno de lista de pedidos;
- retorno de detalhe por id.

## Observacao

Para o `POST /orders` funcionar, a Product API e a Exchange API precisam estar disponiveis e configuradas corretamente no ambiente local.

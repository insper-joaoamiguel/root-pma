# Modelo de dados

## Order

Representa um pedido finalizado do usuario.

Campos principais:

- `id`
- `date`
- `currency`
- `items`
- `total`

## OrderItem

Representa um item dentro do pedido.

Campos principais:

- `id`
- `product`
- `quantity`
- `total`

## Relacionamento

Um pedido possui varios itens, e cada item referencia um produto existente na Product API.

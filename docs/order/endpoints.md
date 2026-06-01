# Endpoints

## POST /orders
Cria um novo pedido para o usuario autenticado.

### Exemplo de request
```json
{
  "items": [
    {
      "idProduct": "0195abfb-7074-73a9-9d26-b4b9fbaab0a8",
      "quantity": 2
    }
  ]
}
```

## GET /orders
Retorna todos os pedidos do usuario autenticado.

## GET /orders/{id}
Retorna o detalhe de um pedido pelo identificador.

### Query opcional
- `currency`: permite devolver os totais em outra moeda.

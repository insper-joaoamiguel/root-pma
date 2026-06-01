# Endpoints

## GET /exchanges/{from}/{to}
Retorna a taxa de conversao entre duas moedas.

### Exemplo
- `GET /exchanges/USD/BRL`

### Resposta esperada
```json
{
  "sell": 5.1,
  "buy": 5.08,
  "date": "2026-05-31 14:23:42",
  "id-account": "0195ae95-5be7-7dd3-b35d-7a7d87c404fb"
}
```

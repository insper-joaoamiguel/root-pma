# Comunicacao entre servicos

A comunicacao entre os microsservicos ocorre por requisicoes HTTP.

## Fluxo principal

1. o usuario autentica no servico central;
2. o JWT e enviado nas chamadas subsequentes;
3. a Order API consulta a Product API para validar os itens;
4. quando necessario, a Order API consulta a Exchange API para conversao de moedas.

## Integracoes

- **Order -> Product**: validacao e consulta de produtos.
- **Order -> Exchange**: obtencao de cotacao para conversao.
- **Exchange -> servico externo**: consulta de taxa de cambio.

## Ponto de atencao

Se um dos servicos dependentes ficar lento, a resposta da Order API tambem fica lenta, pois a montagem do pedido depende dessas informacoes.

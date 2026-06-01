# Integracoes da Order API

A Order API conversa com outros servicos para montar a resposta final do pedido.

## Product API

Usada para validar se o produto existe e recuperar os dados que compoem o item do pedido.

## Exchange API

Usada quando a consulta do pedido pede conversao de moeda. A API recebe a moeda solicitada e devolve a taxa necessaria para ajustar o total.

## Impacto na aplicacao

Essas chamadas externas aumentam a dependencia da Order API em relacao aos demais servicos. Por isso, a latencia dessas integracoes afeta diretamente o tempo de resposta.

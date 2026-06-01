# Integracao externa

A Exchange API depende de um servico de terceiros para obter taxas de cambio. Isso permite que a aplicacao mantenha a responsabilidade de conversao separada da logica de pedidos.

## Consequencias da dependencia externa

- variacao na latencia de resposta;
- risco de indisponibilidade do provedor;
- necessidade de tratamento de erro e timeout.

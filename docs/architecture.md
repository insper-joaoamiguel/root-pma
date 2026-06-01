# Arquitetura

O sistema foi organizado em microsservicos independentes para permitir evolucao isolada de cada dominio.

## Visao em alto nivel

- o usuario acessa o sistema por meio da camada de entrada;
- o fluxo de autenticacao e centralizado no servico de auth do projeto;
- a **Order API** consome a **Product API** e a **Exchange API** quando precisa montar um pedido;
- cada servico possui sua propria camada de persistencia e regras de negocio.

## Principais componentes

- **Gateway / entrada do sistema**: ponto de acesso das requisicoes.
- **Auth**: emite e valida JWT.
- **Order API**: orquestra pedidos e integra com os demais servicos.
- **Product API**: armazena e consulta produtos.
- **Exchange API**: consulta taxas em servico terceiro e retorna conversoes.

## Observacao sobre o fluxo

A Order API depende diretamente de chamadas externas para validar produtos e compor o total do pedido. Isso torna a integracao um ponto importante de atencao para desempenho e confiabilidade.

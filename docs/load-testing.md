# Load Testing

## Objetivo

O objetivo deste teste foi avaliar o comportamento da Order API sob carga concorrente, analisando tempo de resposta, capacidade de processamento e possíveis gargalos.

---

## Ferramenta utilizada

Os testes foram executados utilizando a ferramenta **k6**, amplamente utilizada para testes de carga em aplicações web e APIs REST.

---

## Cenário de teste

### Endpoint avaliado

```http
GET /orders
```

### Configuração

| Parâmetro               | Valor       |
| ----------------------- | ----------- |
| Usuários Virtuais (VUs) | 20          |
| Duração                 | 30 segundos |
| Total de Requisições    | 600         |

---

## Resultados

### Métricas coletadas

| Métrica                 | Resultado   |
| ----------------------- | ----------- |
| Tempo médio de resposta | 9.16 ms     |
| Tempo mínimo            | 2.99 ms     |
| Tempo máximo            | 42.99 ms    |
| Percentil 90 (p90)      | 16.33 ms    |
| Percentil 95 (p95)      | 19.93 ms    |
| Requisições totais      | 600         |
| Vazão média             | 19.73 req/s |
| Usuários simultâneos    | 20          |

## Análise

Durante a execução do teste, a API manteve tempos de resposta baixos e estáveis, demonstrando boa capacidade de atendimento para o cenário avaliado.

O tempo médio permaneceu abaixo de 10 ms, enquanto 95% das requisições foram concluídas em menos de 20 ms.

---

## Relação com os Bottlenecks

O principal gargalo identificado para este endpoint está relacionado ao acesso ao banco de dados.

Atualmente, a consulta retorna todos os pedidos sem paginação, o que pode impactar o desempenho conforme a quantidade de registros armazenados aumenta.

Em cenários com maior volume de dados, espera-se aumento na latência devido ao custo de consulta, serialização e transferência dos resultados.

---

## Possíveis melhorias

As seguintes melhorias podem ser implementadas para reduzir o impacto desse gargalo:

* paginação dos resultados;
* filtros por período ou usuário;
* cache de consultas frequentes;
* otimização de índices no banco de dados;
* limitação do tamanho das respostas.

---

## Conclusão

A Order API apresentou desempenho satisfatório para o cenário testado, mantendo baixa latência e boa estabilidade.

Apesar dos resultados positivos, a ausência de paginação representa um potencial gargalo em ambientes com maior volume de dados, justificando futuras otimizações para garantir escalabilidade.

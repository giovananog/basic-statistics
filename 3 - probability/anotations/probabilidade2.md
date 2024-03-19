## Variável Aleatória e Distribuição de Probabilidade

### Variável Aleatória e Distribuição de Probabilidade

Para facilitar o desenvolvimento da teoria das probabilidades, é importante associar um número a um evento aleatório e calcular a probabilidade desse número ocorrer em vez da probabilidade do evento. Por exemplo, observar o estado de 3 equipamentos de laboratório e determinar sua condição (DEFEITUOSO - D ou BOM - B).

S = (BBB), (BBD), (BDB), (DBB), (BDD), (DBD), (DDB), (DDD)

#### Eventos:

- E1: Ter exatamente 2 equipamentos em boas condições.
  - E1: {(BBD), (BDB), (DBB)}
- E2: Ter 2 ou mais equipamentos em boas condições.
  - E2: {(BBB), (BBD), (BDB), (DBB)}

X = Número de equipamentos em boas condições, ⇒ x = 0, 1, 2, 3. (Observação: Normalmente, a variável aleatória é representada por uma letra maiúscula, e o valor que ela assume pela mesma letra minúscula).

P(E1) = P(X = 2)
P(E2) = P(X ≥ 2)

### Variável Aleatória

Uma variável aleatória é qualquer variável que associa um único número real (ou uma série de números) a cada evento no espaço amostral. Como cada evento aleatório está relacionado a uma probabilidade de ocorrência, cada um dos valores possíveis da variável aleatória também está relacionado a uma probabilidade de ocorrência.

Notação: Variáveis aleatórias - X, Y, Z (maiúsculas)

A probabilidade de a variável aleatória X assumir o valor x é representada por P(X = x).

Observação: Por convenção, variáveis aleatórias são sempre quantitativas, mesmo ao se referir a atributos ou categorias (ou seja, variáveis qualitativas).

### Distribuição Binomial (Discreta)

A distribuição binomial é frequentemente aplicada para descrever situações em que a variável de uma população em estudo tem duas respostas possíveis (sucesso e fracasso). Interessa principalmente a duas categorias: item defeituoso ou insatisfatório versus item bom ou satisfatório e sucesso e falha que ocorreram em uma amostra de tamanho fixo.

A distribuição binomial é aplicada a eventos decorrentes de uma série de experimentos aleatórios, que constituem o chamado Processo de Bernoulli (respostas sim-não).

### Distribuição de Poisson (Discreta)

É usada ao determinar probabilidades de variáveis aleatórias discretas definidas como:

X: número de elementos (indivíduos) que ocorrem em um volume, um intervalo de tempo ou uma superfície específica (número de elementos por área, volume ou tempo, etc).

Observação: Se houver uma variável aleatória: o número de elementos (indivíduos) que ocorrem em um intervalo, em que E(X) tem um valor distante de V(X), Poisson não deve ser usado.

### Distribuição de Probabilidade Contínua

É a distribuição de probabilidade associada a uma variável aleatória contínua. Nesse caso, não é possível associar diretamente uma probabilidade de ocorrência a cada valor da variável aleatória devido à natureza da variável, que tem infinitos valores. No entanto, por meio de gráficos construídos a partir da tabela de distribuição de frequência, é possível encontrar uma função de densidade de probabilidade (pdf) que permite determinar a probabilidade de que os valores da variável aleatória estejam dentro de intervalos de interesse.

### Distribuição Normal ou Gaussiana (Contínua)

É a distribuição mais importante de variáveis aleatórias contínuas devido à sua enorme aplicação em diversos campos do conhecimento. "Seja qual for a variável aleatória em estudo, é necessário reconhecer primeiro qual é a função de densidade de probabilidade (pdf) associada a ela."

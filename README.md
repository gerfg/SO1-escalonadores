# SO1-escalonadores

Implementação dos escalonadores de processos FCFS, SJF E RR para disciplina de Sistemas Operacionais 1 do curso de Engenharia de Computação da Universidade Federal da Paraíba.

### Escalonadores
#### FCFS (First-Come, First-Served)

Consiste no mais simples dos três algoritmos de escalonamento de processos. Comporta-se como uma fila FIFO, a ordem dos processos ficará no formato de chegada dos mesmos a fila de prontos, ou seja, a ordem de chegada será o principal critério para atendimento dos processos. Uma principal desvantagem é que processos com um tempo de execução alto faŕá com que processos mais rápidos demorem a serem executados.

#### SJR (Shortest Job First)

Como o próprio nome do algoritmo define, ele vai atribuir ao processador o processo com menor tempo de execução, reduzindo o tempo de espera médio bastante, mas podendo causar um starvation, logo, que, um processo com um alto tempo de execução poderá nunca receber a posse do processador para executar.

#### RR (Round-Robin)

Ao adicionarmos preempção ao FCFS, obtemos o algoritmo de revezamento, ou Round-Robin, que, consiste em, por ordem de chegada para execução, deixar os processos executarem, mas não por completos, apenas por um quantum de tempo pré definido, tendo assim uma fila de execução em que cada processo vai tomar posse do processador tempo_de_execução/quantum vezes, até que seja finalizada sua tarefa.

### Build e Execução

``` shell
$ mkdir build/ && cd build/
$ cmake ../ && make
$ ./escalonadores [instancia]
```

### Exemplo

```shell
$ cd build/
$ ./escalonadores instances/sjf01

FCFS 31.5 20 20
SJF 21 9.5 9.5
ExecutionList
Id: 1 Chegada: 5 Execucao: 8 [5 , 7]
Id: 2 Chegada: 5 Execucao: 13 [7 , 9]
Id: 3 Chegada: 5 Execucao: 18 [9 , 11]
Id: 4 Chegada: 5 Execucao: 0 [11 , 12]
Id: 1 Chegada: 5 Execucao: 6 [12 , 14]
Id: 2 Chegada: 5 Execucao: 11 [14 , 16]
Id: 3 Chegada: 5 Execucao: 16 [16 , 18]
Id: 1 Chegada: 5 Execucao: 4 [18 , 20]
Id: 2 Chegada: 5 Execucao: 9 [20 , 22]
Id: 3 Chegada: 5 Execucao: 14 [22 , 24]
Id: 1 Chegada: 5 Execucao: 2 [24 , 26]
Id: 2 Chegada: 5 Execucao: 7 [26 , 28]
Id: 3 Chegada: 5 Execucao: 12 [28 , 30]
Id: 1 Chegada: 5 Execucao: 0 [30 , 32]
Id: 2 Chegada: 5 Execucao: 5 [32 , 34]
Id: 3 Chegada: 5 Execucao: 10 [34 , 36]
Id: 2 Chegada: 5 Execucao: 3 [36 , 38]
Id: 3 Chegada: 5 Execucao: 8 [38 , 40]
Id: 2 Chegada: 5 Execucao: 1 [40 , 42]
Id: 3 Chegada: 5 Execucao: 6 [42 , 44]
Id: 2 Chegada: 5 Execucao: 0 [44 , 45]
Id: 3 Chegada: 5 Execucao: 4 [45 , 47]
Id: 3 Chegada: 5 Execucao: 2 [47 , 49]
Id: 3 Chegada: 5 Execucao: 0 [49 , 51]

RR 30 3 18.5

```

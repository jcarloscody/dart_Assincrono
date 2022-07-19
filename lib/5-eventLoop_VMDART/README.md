# o que é event Loop
- é um padrão de projeto que espera despachar eventos ou mensagens em um programa.
- outro exemplo de uso é a linguagem JS 
- assim como o JS , o DART trabalha apenas com uma thread que é chamado de ISOLATE, tudo é executado dentro dela .
- em suma, ela é responsável por executar todos os processos dentro do sistema em uma determinada ordem.

# Como funciona:
Usa o conceito de Fila onde dentro dele existem 2 tipos de filas:
- Filas de `Event`: 
  - são sempre FIFO (first in, first out)
  - sempre uma execução assíncrona 
  - tem baixa prioridade de execução (se comparado as micro task)
  - deve executar os processos pesados(leitura, Http, BD...)
- Filas de Micro Task:
  - são sempre FIFO (first in, first out)
  - sempre uma execução síncrona 
  - tem alta prioridade
  - deve ser uma execução muito rápida

# Como funciona processos assíncronos com await
- quando colocamos await estamos fazendo o programa esperar 
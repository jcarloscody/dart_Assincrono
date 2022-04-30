//void main - já é uma microTask - como ela é a primeira a ser executada, tem alta prioridade.
import 'dart:async';

void main() {
  print("Início main"); //como a main é principal, primeiro executa a main

  scheduleMicrotask(() => print("microtask #1")); //depois executa esta

//depois do microTask começa a execução desta, Event
  Future.delayed(
    Duration(seconds: 1),
    () => print(
        "Future #1 delayed  (obs: está executando por último pq tem um delayed de 1s)"),
  );
  Future(() => print("Future #2 "));
  Future(() => print("Future #3 "));

  scheduleMicrotask(() => print("microtask #2")); //depois executa esta

  print("Fim main");
}

/**
 * EVENT
 * Future.delayed
 * Future #2
 * Future #3
 */

/**
 * MicroTask
 * Main
 * Microtask #1
 * Microtask #2
 */

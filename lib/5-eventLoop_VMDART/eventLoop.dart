import 'dart:async';

void main() {
  print("Início main"); //como a main é principal, primeiro executa a main

  scheduleMicrotask(() => print("microtask #1"));

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
Início main
Fim main
microtask #1
microtask #2
Future #2 
Future #3 
Future #1 delayed  (obs: está executando por último pq tem um delayed de 1s)
 */

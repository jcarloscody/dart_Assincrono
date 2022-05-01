import 'dart:async';

Future<void> main() async {
  print("Início main");
  await Future.delayed(
      Duration(seconds: 1), () => print("Future #1 delayed  "));

//não precisa colocar -await aqui pq ele já é sincrono
  scheduleMicrotask(() => print("microtask #1 ")); //

  await Future(() => print("Future #2 "));
  await Future(() => print("Future #3 "));

  scheduleMicrotask(
    () => print("microtask #2 "),
  );

  print("Fim main");
}

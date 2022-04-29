void main() {
  //status ->> Incompleto, Concluido(com valor, com error)
  //concluido com valor - then
  //concluido com erro - OnError ou CatchError
  //sempre executado - whenComplete

  prcAssincronoString().then(
    (value) => print(value),
  );

  prcAssincronoStringComErros()
      .then(
        (value) => print(value),
      )
      .onError(
        (error, stackTrace) => print(error),
      );

  //pegar erro 2 opcção
  prcAssincronoStringComErros().then((value) => print(value), onError: (value) {
    print("tratando o error por o then ---> $value");
  });

  //cuidado com os erros que podem ocorrer dentro do then. o onError e onError do then não pegam. deve tratar com try
  prcAssincronoString().then((value) {
    try {
      throw Exception("erooo!");
    } catch (e) {
      print(e);
    }
  });

  //.whenComplete - a mesma coisa do finally
  prcAssincronoStringComErros().then(
    (value) => print(value),
    onError: (value) {
      print("tratando o error MESMO COM WHENcOMPLETE ---> $value");
    },
  ).whenComplete(
    () => print("finalizado com sucesso!"),
  );
}

void funcaoContendoAssincrono() {
  Future.delayed(Duration(seconds: 10), () {
    print("processo Future.delayed executado");
  });
}

Future<void> procAssincrono() async {
  //como retorna void, precisa declarar que é async
  Future.delayed(Duration(seconds: 10), () {
    print("processo Future.delayed executado");
  });
}

Future<String> prcAssincronoString() {
  //é opcional aquii colocar async
  return Future.delayed(Duration(seconds: 2), () => "fim");
}

Future<String> prcAssincronoStringComErros() {
  //é opcional aquii colocar async
  return Future.delayed(
      Duration(seconds: 2), () => throw Exception("erro aqui"));
}

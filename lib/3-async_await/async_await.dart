void main() async {
  //precisa deste async pq vai usar await
  var p = await prcAssincronoStringComErros(); //vai aguardar
}

Future<String> prcAssincronoStringComErros() {
  //é opcional aquii colocar async
  return Future.delayed(Duration(seconds: 2), () => "retorno String");
}

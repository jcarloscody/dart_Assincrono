Future<void> main() async {
  //vamos executar vários processos async

  var nomes = <String?>["josue", "carlos", "da", "silva", null];

  await Future.forEach<String?>(nomes, (nome) async {
    print(await saudacao(nome));
    print("espera");
  }); //1 forma de foreach em cima de future

  for (var nome in nomes) {
    print(await saudacao(nome));
  }

  //fazendo uma execução paralela, em vez de demorar 1s para cada item da lista nome, totalizando 5s, agora vai demorar 1s pq é uma execucao paralela
  var nomesAwait = nomes.map((e) => saudacao(e)).toList();
  var nomesS = await Future.wait(nomesAwait);

  print("FIM");
}

Future<String?> saudacao(String? nome) {
  return Future.delayed(Duration(seconds: 2), () => nome);
}

Future<void> p1() async {
  await saudacao("nome");
}

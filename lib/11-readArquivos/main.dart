import 'dart:io';

void main() async {
  var arquivo = File("./arquivos/texto.txt");

//leitura sincrona
  var arquivoLeituraSincrona = arquivo.readAsStringSync();
  print("leitura sincrona \n${arquivoLeituraSincrona}");

// leitura assincrona
  var arquivoLeituraAssincrona = await arquivo.readAsString();
  print("leitura assincrona \n${arquivoLeituraAssincrona}");

// leitura linha sincrona
  var arquivoLeituraLinhaAssincrona = await arquivo.readAsLines();
  print("leitura linha Assincrona  ");
  arquivoLeituraLinhaAssincrona.forEach((element) {
    print(element);
  });

// leitura linha Sincrona
  var arquivoLeituraLinhaSincrona = arquivo.readAsLinesSync();
  print("leitura linha Sincrona  ");
  arquivoLeituraLinhaSincrona.forEach((element) {
    print(element);
  });

  //Write
  await arquivo.writeAsString(
    "\nNunca esqueça, somos campeões, desistir não é nosso lema!",
    mode: FileMode.append,
  );

  print("\n\n\n");
  print("Leitura Após escrita");
  print(arquivo.readAsStringSync());

  //escrever várias vezes
  var lista = ["\nQual", "o", "lema", "de", "um", "soldado", "?"];
  var abertoEscrita = arquivo.openWrite(mode: FileMode.append);

  lista.forEach((element) {
    abertoEscrita.write(" ${element}");
  });
}

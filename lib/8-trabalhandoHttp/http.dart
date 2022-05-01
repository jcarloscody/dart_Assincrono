import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  int cep = 55870000;
  //var url = "https://viacep.com.br/ws/${cep}/json";
  var url = "https://jsonplaceholder.typicode.com/posts/";

  //esses métodos são feitos por FUture - async -
  var response = await http.get(Uri.parse(url));

  //verificar o status
  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(
        "Retornando o response - é apenas uma string contendo o json \n ${response.body}");
    print("\n");
    print("\n");
    print("\n");

    print(
        "vamos converter o json do response.body para um objeto dynamic e daí pegamos o tipo");

    var mapaResponse = convert.jsonDecode(response.body);
    print("Qual foi o tipo? ${mapaResponse.runtimeType}");
    print("é um map? ${mapaResponse is Map}");
    print("é uma List? ${mapaResponse is List}");

    if (mapaResponse is Map) {
      print("Cep: ${mapaResponse['cep']}");
    } else {
      print("Valor da LIsta: ${mapaResponse[0]}");
    }

    print("Foi um sucesso? ${response.reasonPhrase}");
  }

  print("");
  print("");
  print("");
  salvarPost(url);
}

Future<void> salvarPost(url) async {
  print(
      "Num post mandamos algo do tipo Json por exemplo. então devemos converter");

  var mapReq = {
    "userId": "16516516516516516516",
    "id": "616516516516516516",
    "title": "Josue na área",
    "body": "uhuuuuuuuuuuuuuuuu",
  };
  //headers: é opcional, vai depender do seu projeto
  var res = await http.post(
    Uri.parse(url),
    body: convert.jsonEncode(mapReq),
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  print(res.reasonPhrase);
  print(res.statusCode);
  print(res.body);
  print("");
  print("");
}

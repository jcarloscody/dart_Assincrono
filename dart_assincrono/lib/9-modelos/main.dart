import 'dart:convert';

import 'package:dart_assincrono/9-modelos/usuario.dart';
import 'package:http/http.dart' as http;

import 'cidade.dart';

void main() async {
  int cep = 55870000;
  var url = "https://viacep.com.br/ws/${cep}/json";

  await pegandoCep(url);
  print("\n\n\n");

  await pegandoUsuario(
      "https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1");
}

Future<void> pegandoCep(url) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode >= 200 && response.statusCode < 300) {
    var cidade = Cidade.fromJson(response.body);
    print(cidade);
    print(cidade.toJson());
    print(cidade.toMap());
  }
}

Future<void> pegandoUsuario(url) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode >= 200 && response.statusCode < 300) {
    var usuario = Usuario.fromJson(response.body);
    print(usuario);
    print(usuario.toJson());
    print(usuario.toMap());
  }
}

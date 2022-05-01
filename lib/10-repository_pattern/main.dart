import 'package:dart_assincrono/10-repository_pattern/repositories/cidade_repository.dart';

void main() async {
  int cep = 55870000;
  var url = "https://viacep.com.br/ws/${cep}/json";

  var cidadeRepository = CidadeRepository();

  try {
    var cidade = await cidadeRepository.pegandoCep(url);
    print(cidade);
  } catch (e) {
    print(e);
  }
}

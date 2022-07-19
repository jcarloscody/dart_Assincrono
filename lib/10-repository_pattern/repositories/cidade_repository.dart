import 'package:http/http.dart';

import '../models/cidade.dart';

class CidadeRepository {
  Future<Cidade> pegandoCep(url) async {
    var response = await get(Uri.parse(url));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return Cidade.fromJson(response.body);
    }
    throw Exception("Erro!");
  }
}

import 'dart:async';

void main(List<String> args) {
  nome(1).then((value) => print("mmm $value"));
}

Future<String> nome(int id) async {
  final complete = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (id < 10) {
      complete.complete("sucesso na busca do id");
    } else {
      complete.completeError("error");
    }
  });

  return complete.future;
}

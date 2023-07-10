void main(List<String> args) {
  var a1 = Future.delayed(Duration(seconds: 1), () => "#1");
  var a2 = Future.delayed(Duration(seconds: 3), () => "#2");
  var a3 = Future.delayed(Duration(seconds: 1), () => "#3");
  var a4 = Future.delayed(Duration(seconds: 1), () => "#4");
  var a5 = Future.delayed(Duration(seconds: 1), () => "#5");
  var a6 = Future.delayed(Duration(seconds: 2), () => "#6");
  var a7 =
      Future.delayed(Duration(seconds: 4), () => throw Exception("Erro no #7"));

  Future.wait(
    [a1, a2, a3, a4, a5, a6, a7],
    eagerError: true,
    cleanUp: (successValue) => print("Sucesso para $successValue"),
  ).then((value) {
    print(value);
    print(DateTime.now().toIso8601String());
  });
}

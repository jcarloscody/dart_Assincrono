void main() {
  //assincrono: vc starta processos em paralelo
  print("started process");
  funcaoContendoAssincrono();
  var i = 100;
  while (i > 1) {
    print(i);
    i--;
  }
}

void funcaoContendoAssincrono() {
  Future.delayed(Duration(seconds: 10), () {
    print("processo Future.delayed executado");
  });
}

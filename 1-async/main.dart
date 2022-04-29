void main() {
  //assincrono: vc starta processos em paralelo
  print("started process");
  assincrono();
  var i = 100;
  while (i > 1) {
    print(i);
    i--;
  }
}

void assincrono() {
  Future.delayed(Duration(seconds: 10), () {
    print("processo Future.delayed executado");
  });
}

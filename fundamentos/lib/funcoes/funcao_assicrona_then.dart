Future<String> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  return "processamento assincrona - hora ${DateTime.now()}";
}

String processarDados() {
  return "processamento sicrono - hora ${DateTime.now()}";
}

void main() async {
  buscarDados().then((resutado) {
    print(resutado);
  });

  print(processarDados());
}

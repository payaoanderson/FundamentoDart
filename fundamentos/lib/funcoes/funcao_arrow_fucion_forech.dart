void main() {
  var lista = ["banana", "maça", "melancia", "uva"];
  print("criado a funcao dentro da chamada do metodo foreach");
  lista.forEach((item) => print("${lista.indexOf(item)} : $item"));

  for (var item in lista) {
    imprimeLista(lista.indexOf(item), item);
  }
}

void imprimeLista(int indice, String item) {
  print("$indice : $item");
}

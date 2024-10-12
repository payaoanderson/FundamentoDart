void main() {
  var numeros = [1, 2, 3, 4, 5];
  var soma =
      numeros.fold(0, (valorAnterior, elemento) => valorAnterior + elemento);
  print(soma);

  soma = 0;
  for (var elemento in numeros) {
    soma += elemento;
  }

  var saudacao = ["ola", " ", "fulano", "!"];

  var msg = "";
  for (var elemento in saudacao) {
    msg += elemento;
  }
  print(msg);
  msg = saudacao.fold("", (valorAnterior, element) => valorAnterior + element);
  print(msg);

  print(saudacao.fold<String>("", (valorAnterior, element) => valorAnterior + element));
}

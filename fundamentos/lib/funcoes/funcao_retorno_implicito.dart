int somarRetornoExplicito(int numero1, int numero2) {
  return (numero1 + numero2);
}

int somarRetornoImplicito(int numero1, int numero2) => numero1 + numero2;

void main(List<String> args) {
  print("chamada de funcao de retorno Explicito: ${somarRetornoExplicito(10,10)}");
  print("chamada de funcao de retorno Implicito: ${somarRetornoImplicito(10,10)}");
}

void executarOperacao(int a, int b, Function operacao) {
  print(operacao(a, b));
}


void main(List<String> args) {
  executarOperacao(4,5, (a, b) => a + b); //saida 9
  executarOperacao(4,5, (a, b) => a - b); //saida -1
  executarOperacao(4,5, (a, b) => a * b); //saida 20
  executarOperacao(8,2, (a, b) => a / b); //saida 4
}

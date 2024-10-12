void main() {
  try {
    int resultado = divideNumeros(10, 0);
    print("resultado da divisao $resultado");
  } catch (e) {
    print("erro $e");
  } finally {
    print("Fim do Sistema");
  }
}

int divideNumeros(dividendo, divisor) {
  return dividendo ~/ divisor;
}

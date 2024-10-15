void main() {
  try {
    int resultado = divideNumeros("10", 0);
    print("resultado da divisao $resultado");
    //} on IntegerDivisionByZeroException {
  } /*on UnsupportedError {
    print("o divisor deve ser diferente de zero");
  } on NoSuchMethodError {
    print("o dividendo e o divisor deve ser um numero");
  }*/
  catch (e) {
    print("erro $e");
  } finally {
    print("Fim do Sistema");
  }
}

int divideNumeros(dividendo, divisor) {
 // if (dividendo is! int || divisor is! int)
 if (dividendo is! int)
    throw Exception("o dividendo e o divisor deve ser um numero");
  else if (divisor is! int)
    throw Exception("o dividendo e o divisor deve ser um numero");
  else if (divisor == 0)
    throw Exception("o divisor deve ser diferente de zero");
    else
  return dividendo ~/ divisor;
}

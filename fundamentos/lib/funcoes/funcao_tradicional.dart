import 'dart:io';

int somar(int a, int b) {
  return a + b;
}
void somarSemRetorno(int a, int b) {
    print("o resultado de ${a} + ${b} = ${a + b}");
}


int somarComRetorno(int a, int b) {
  return 0;
}



void main(List<String> args) {
  print("informe o primeiro numero");
  var numero1 = stdin.readLineSync();
  print("informe o segundo numero");
  var numero2 = stdin.readLineSync();

  try{
    var resultado = somar(int.parse(numero1!), int.parse(numero2!));
    print("o resultado de ${numero1} + ${numero2} = ${resultado}");
  }catch(e){
    print("numero 1 e numero 2 invalido");
  }
}

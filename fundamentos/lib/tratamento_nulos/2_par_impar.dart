import 'dart:io';

void main(List<String> args) {
  print('Informe um Número');
  final numero = stdin.readLineSync();
  if (numero != null && int.tryParse(numero) != null) {
    final numeroConvertido = int.tryParse(numero);
    // if (numeroConvertido! % 2 == 0) {
    //   print('numero par');
    // } else {
    //   print('numero impar');
    // }
    // if (numeroConvertido! % 2 == 0)
    //   print('numero par');
    // else
    //   print('numero impar');

    print("Numero ${numeroConvertido! % 2 == 0 ? 'par' : 'impar'}");

    numeroConvertido! % 2 == 0 ?print('numero par') : print('impar');
  } else {
    print("numero inteiro invalido. Ajuda eu Fi");
  }
}

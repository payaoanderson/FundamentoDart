/*
= -> atribuição 
== -> comparação
< -> menor que
> => maior que
<= -> menor ou igual a
>= => maior ou igual a
!= -> diferente
+= -> soma e atribui
-= -> subtrai e atibur
*= -> multiplica e atribua



*/
import 'dart:io';

void main() {
  const limiteIdade = 16;
  print("informe a sua idade");
  final idade = stdin.readLineSync();
  if (idade != null) {
    final idadeCovertida = int.tryParse(idade);
    if (idadeCovertida != null && idadeCovertida < limiteIdade) {
      print("nao pode votar");
    } else if (idadeCovertida == limiteIdade) {
      print("primeiro ano pra votar");
    } else {
      print("pode votar");
    }

    final podeVotar =
        (idadeCovertida != null) ? idadeCovertida >= limiteIdade : false;

    if (podeVotar) {
      print("pode votar");
    } else {
      print("nao pode votar");
    }
  }
}

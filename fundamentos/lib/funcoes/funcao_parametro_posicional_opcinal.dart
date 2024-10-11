import 'dart:io';

String dizerOla(String nome, [String saudacao = "Ola"]) {
  return '$saudacao, $nome.';
}

String dizerOlaArgumentoOpcinalNulo(String nome, [String? saudacao]) {
  saudacao ??= "Ola";
  return '$saudacao, $nome.';
}

void main(List<String> args) {
  var nome;
  do {
    print("informe um nome");
    nome = stdin.readLineSync();
  } while (nome == null);

  print("informe a saudaçao");
  var saudacao = stdin.readLineSync();

  if (saudacao == null || saudacao == "") {
    print(dizerOla(nome));
  } else {
    print(dizerOla(nome, saudacao));
  }
}

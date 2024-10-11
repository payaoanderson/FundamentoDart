import 'dart:io';

void exibirMensagem(
    {String nome = "visitantes", String mensagem = "Bem vindo"}) {
  print("$mensagem, $nome.");
}

void exibirMensagemPosicional(
    [String? nome, String mensagem = "Bem vindo"]) {
  print("$mensagem, ${nome ??= "visitantes"}.");
}

void main(List<String> args) {
  print("digte o nome do visitante");
  var visitante = stdin.readLineSync();

  print("digite a mensagem");
  var mensagem = stdin.readLineSync();

  if (visitante != "" && mensagem != "") {
    exibirMensagem(mensagem: mensagem!);
    exibirMensagemPosicional(visitante!, mensagem);
  } else if (visitante == "" && mensagem == "") {
    exibirMensagem();
    exibirMensagemPosicional();
  } else if (visitante != "") {
    exibirMensagem(nome: visitante!);
    exibirMensagemPosicional(visitante);
  } else if (mensagem != null && mensagem != "") {
    exibirMensagem(mensagem: mensagem);
    exibirMensagemPosicional(null, mensagem);
  }
}

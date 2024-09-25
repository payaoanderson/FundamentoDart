void main() {
  String nomeNonNullSafety = '';
  print("esta vazia ${nomeNonNullSafety.isEmpty}");

  String? nomeNullSafety;
  if (nomeNullSafety != null) {
    print("esta vazia ${nomeNullSafety.isEmpty}");
  }

  String? nomeNullSafety1;

  // ! ignora as validaçoes do null safety e vc fica responsavel

  nomeNullSafety1 = '';
  print("nomeNullSafety1 esta vazia ${nomeNullSafety1!.isEmpty}");

  String? nomeNullSafety2;
  print(
      "nomeNullSafety2 esta vazia ${nomeNullSafety2?.isEmpty ?? "nao preenchido"}");
  ("nomeNullSafety2 esta vazia ${nomeNullSafety2?.isEmpty ?? true}");

  String? nomeNullSafety3;
  nomeNullSafety3 = 'fulano';
  print(
      "nomeNullSafety3 esta vazia ${nomeNullSafety3?.isEmpty ?? "nao preenchido"}");
  ("nomeNullSafety3 esta vazia ${nomeNullSafety3?.isEmpty ?? true}");
}

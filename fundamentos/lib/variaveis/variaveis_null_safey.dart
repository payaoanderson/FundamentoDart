void main() {
  // null safety e uma cracterica introduzida no dart a partir da vesao 2.12 que visa eviar erros em tempo de execuçao o null safety torna o sistema de tipagem forte e mais rigoroso

  // variaves non-nullable
  String nomeCompletoSemAtribuicao;
  nomeCompletoSemAtribuicao = "fundamentos do dart";

  print(nomeCompletoSemAtribuicao);
  String nomeCompletoComAtributo = null;
  nomeCompletoComAtributo = "fundamentos do dart";

  String? nomeCompletoComAtribuicaoNullAble = null;
}

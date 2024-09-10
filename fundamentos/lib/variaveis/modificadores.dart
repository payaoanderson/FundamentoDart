void main() {
  var nomeCurso = "fundamentos dart";
  print(nomeCurso);

  nomeCurso = "fundamentos em dart versao atual";
  print(nomeCurso);

  //final
  //uma variavel declarada como final pode ser atribuda apenas uma vez e seu valor nao pode ser alterado depois de ser definido

  final nomeCursoFinal = "fundamentos em dart";
  print(nomeCursoFinal);

  //nomeCursoFinal = "fundamentos em dart atual";

  const nomeCursoConstante = "fundamentos em dart";
  print(nomeCursoConstante);

  //nomeCursoConstante = "fundamentos em dart versao atual";

  //diferença em final e const

  //final é atribuido em tempo de execução , enquanto cost é atibuida e tempo real de compilação, final pode ter um valor diferene pr cada instancia de uma classe, enquanto const de ter, valor determinação em tempo real de compilação
}

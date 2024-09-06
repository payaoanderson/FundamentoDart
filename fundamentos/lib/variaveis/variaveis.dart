void main() {
  // sintaxe;
  //<tipo> nome = atribição;
  //<tipo> nome = atribição;
  // nome = atribição;

  String nome = "alunos que reclamam";

  int idade;
  idade = 10;

  double cotacaoDolar = 5.64;

  print("Nome ${nome} - Idade ${idade}");
  print("Nome" + nome + "-Idade" + idade.toString());

  //idade = "Numero nove";
  //idade = 1.5;
  cotacaoDolar = 5;
  cotacaoDolar = 5.0;

  var idadeInferido;
  idadeInferido = 20;

  //idadeInferido = 1.5;

  print("Idade ${idadeInferido}");

  dynamic tipoMae;

  tipoMae = 10;
  tipoMae = "String";

  /*object e a classe base de todos os objetos   */

  Object tipoMaeDasMaes;

  tipoMaeDasMaes = 20;
  tipoMaeDasMaes = 20.5;
  tipoMaeDasMaes = "20.5";

  tipoMae += 10;

  print("valor da variavel tipoMae ${tipoMae}");
}

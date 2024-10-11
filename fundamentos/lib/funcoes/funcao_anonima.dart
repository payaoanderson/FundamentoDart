void main() {
  var somaAnonimo = (int a, int b) {
    return a + b;
  };

  print("chamado uma funcao anonima ${somaAnonimo(10, 5)}");
  print("chamado uma fucncao nomeada ${somarNomeado(10, 5)}");

  List<String> pessoas = ["fulano|gerente", "beltrano|vendedor"];
  pessoas.forEach(print);
  //var imprimePessoa = (String pessoa) {
  //  var dados = pessoa.split("|");
  // print("nome: ${dados[0]} profissao: ${dados[1]}");
  //};
  //pessoas.forEach(imprimePessoa);

  pessoas.forEach((String pessoa) {
    var dados = pessoa.split("|");
    print("${pessoas.indexOf(pessoa)+1} º nome: ${dados[0]} profissao: ${dados[1]}");
  });

  for (var pessoa in pessoas) {
    var dados = pessoa.split("|");
    print("nome: ${dados[0]} profissao: ${dados[1]}");
  }
}

int somarNomeado(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  print("\n// List [] permite valores duplicados");
  var numerosList = [];
  numerosList.add(1);
  numerosList.add(1);
  numerosList.add(2);
  numerosList.add(2);
  numerosList.add(3);
  numerosList.add(1);
  numerosList.add(4);
  numerosList.add(null);
  numerosList.add(5);
  print(numerosList);

  print("\n// Set {} não permite valores duplicados");
  Set<int?> numerosSet = {};
  numerosSet.add(1);
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(1);
  numerosSet.add(4);
  numerosSet.add(null);
  numerosSet.add(5);
  print(numerosSet);

  print("\n// Método List.toSet() para transformar uma lista em um set");
  var numerosSetDeList = numerosList.toSet();
  print("\n// Set também possui os métodos Iterable:");
  numerosSetDeList.forEach(print);

  print(
      '''\n// Método difference compara dois sets e apresenta os itens exclusivos do primeiro conjunto.''');
  var conjuntoNumero1 = {1, 2, 3, 4, 5, 6};
  var conjuntoNumero2 = {1, 2, 3, 7}; 
  print("conjunto 1: $conjuntoNumero1");
  print("conjunto 2: $conjuntoNumero2");

  print("\n// Itens do conjunto 1 em relação ao conjunto 2:");
  print(conjuntoNumero1.difference(conjuntoNumero2));

  print("\n// Itens do conjunto 1 em relação ao conjunto 2:");
  print(conjuntoNumero2.difference(conjuntoNumero1));

  print("\n// metodo union -junta os dois sets");
  print(conjuntoNumero1.union(conjuntoNumero2));

  print(
      '''\n// metodo intersection - retorna apenas os itens existens nos dooisc conjuntos''');
  print(conjuntoNumero1.intersection(conjuntoNumero2));

  var conjuntoNomes1 = {"fulano", "beltrano", "sicrano"};
  var conjuntoNomes2 = {"fulano", "beltrano"};
  print("// conjunto de nome 1: $conjuntoNomes1");
  print("// conjunto de nome 2: $conjuntoNomes2");
  print(
      "inteseccao dos dois conjunto ${conjuntoNomes1.intersection(conjuntoNomes2)}");

  print(
      '''\n// metodo lookup - pesquisa um item dentro do conjunto se nao enconmtrar null''');
  print(conjuntoNomes2.lookup("beltrano"));
  print(conjuntoNomes2.lookup("sicrano"));

  print(
      '''\n// para retornar um item do conunto atraves do indice deve-ser utilizar o metodo elementat(index)''');
  print("segundo nome do conjunto ${conjuntoNomes1.elementAt(1)}");
}

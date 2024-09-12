void main() {
  final numeros = [1, 2, 3, 4];
  print(numeros);

  numeros.add(5);
  print(numeros);

  //numeros = [6,7,8,9];

  final nomes = ['fulano', "beltrano"];
  print(nomes);

  nomes.add('sicrano');
  print(nomes);

  print(nomes[0]);

  print(nomes[2]);

  nomes.insert(0, 'novo Primeiro');
  print(nomes);

  final nomes1 = ['fulano 1', 'beltrano 1'];
  nomes.addAll(nomes1);
  print(nomes);

  final nomes2 = ['fulano 2', 'beltrano 2'];
  nomes.insertAll(3, nomes2);
  print(nomes);

  nomes.remove('fulano 1');
  print(nomes);

  nomes.remove('beltrano 1');
  print(nomes);

  nomes.removeWhere((nome) {
    print("nome procurado ${nome.substring(0,6)}");
    if (nome.substring(0,6) != 'fulano') {
      return true;
    } else {
      return false;
    }
  });

  print(nomes);

  //lambda


  nomes.removeWhere((nome) => nome.substring(0, 6) != 'fulano');
  print(nomes);

}

import 'animal.dart';
import 'alimento.dart';
import 'especie.dart';

class Gato extends Animal {
  int ronrom;
  Gato(String nome, double peso, this.ronrom, Alimento alimento)
      : super(nome, peso, alimento, Especie.MAMIFERO);
  void fazerCarinho() {
    ronrom += 10;
    print("$nome esta ronronado $ronrom vezes mais");
  }

  @override
  void fazerSom() {
    print("$nome fez miau");
  }

  @override
  String toString() {
    return "gato | nome: $nome; peso: $peso; romron: $ronrom; especie: ${especie.name}";
  }
}

import 'animal.dart';
import 'alimento.dart';
import 'brinquedo.dart';
import 'especie.dart';

class Cachorro extends Animal {
  int fofura;
  List<Brinquedo> brinquedos;

  Cachorro(String nome, double peso, this.fofura, Alimento alimento)
      : brinquedos = [],
        super(nome, peso, alimento, Especie.MAMIFERO);
  void incluirBrinquedo(Brinquedo brinquedo) {
    brinquedos.add(brinquedo);
  }

  void brincar(Brinquedo brinquedo) {
    if (brinquedos.contains(brinquedo)) {
      fofura += 10;
      print("a fofura de $nome aumentou para $fofura");
      print("$nome esta brincando com o brinquedo: ${brinquedo.nome}");
    } else {
      print("o brinquedo ${brinquedo.nome} nao pertence ao $nome");
    }
  }

  @override
  void fazerSom() {
    print("$nome fez auau");
  }

  @override
  String toString() {
    return "Cachorro | nome: $nome; peso: $peso; fofura: $fofura; especie: ${especie.name}";
  }
}

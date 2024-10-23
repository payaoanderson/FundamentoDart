import 'animal.dart';

// associacao 
//relacio

class Veterinario {
  String nome;
  Veterinario(this.nome);
  void atender(Animal animal) {
    print("$nome esta atendendo o animal ${animal.nome}");
  }
}

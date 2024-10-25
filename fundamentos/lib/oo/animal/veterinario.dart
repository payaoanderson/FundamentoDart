import 'animal.dart';
import 'tratamento.dart';

// associacao
//relacio

class Veterinario {
  String nome;
  Veterinario(this.nome);
  void atender(Animal animal, [Tratamento? tratamento]) {
    if (tratamento != null)
      print("$nome esta atendendo o animal ${animal.nome} com ${tratamento.descricao}");
      else
    print("$nome esta atendendo o animal ${animal.nome}");
  }
}


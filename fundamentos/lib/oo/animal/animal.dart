import 'alimento.dart';

abstract class Animal {
  String nome;
  double peso;
  Alimento alimento;
  Animal(this.nome, this.peso, this.alimento);
  void fazerSom();
  void comer() {
    print("$nome comeu! - ${alimento.tipo}");
  }
}

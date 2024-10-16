import 'Circulo.dart';
import 'Forma.dart';
import 'Quadrado.dart';
import 'Retangulo.dart';
import 'Triangulo.dart';

void main(List<String> args) {
  List<Forma> formas = [];
  formas.add(Quadrado(10));
  formas.add(Retangulo(10,5));
  formas.add(Triangulo(10,5));
  formas.add(Circulo(10));
  // print("Area do quadrado: ${quadrado.caculaArea()}");
  formas.forEach((forma) => forma.imprimeForma());
}

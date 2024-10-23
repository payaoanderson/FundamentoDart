import 'alimento.dart';
import 'gato.dart';

void main(List<String> args) {
  var racaoGato = Alimento("raçao de atum");

  var gato = Gato("garfild", 25.0, 0, racaoGato);

  gato.fazerSom();
}

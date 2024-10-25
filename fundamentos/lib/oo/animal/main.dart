import 'alimento.dart';
import 'brinquedo.dart';
import 'cachorro.dart';
import 'gato.dart';
import 'tratamento.dart';
import 'veterinario.dart';

void main(List<String> args) {
  var racaoGato = Alimento("raçao de atum");

  var gato = Gato("garfild", 25.0, 0, racaoGato);

  gato.fazerSom();

  //print(gato.toString());
  print(gato);

  var racaoCachorro = Alimento("royal canyl");
  var bola = Brinquedo("bola");
  var osso = Brinquedo("osso");
  var piscina = Brinquedo("picina");
  Cachorro cachorro = Cachorro("snup", 14.0, 0, racaoCachorro);
  cachorro.incluirBrinquedo(bola);
  cachorro.incluirBrinquedo(osso);
  cachorro.brincar(bola);

  final vetjoao = Veterinario("joao");
  vetjoao.atender(cachorro);

  final vermifugar = Tratamento("vermifugaçao");
  vetjoao.atender(gato, vermifugar);
}

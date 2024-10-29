import 'padrao.dart' as padrao;
import 'com_parametros.dart' as com_parametros;
import 'inicializacao_formal.dart' as inic_formal;
import 'opicional_posicional.dart' as op_posicional;
import 'opcinal.nomeado.dart' as opcinal_nomeado;

void main(List<String> args) {
  final carroGTR = padrao.Carro();
  carroGTR.fabricante = "nissan";
  carroGTR.modelo = "GTR";
  carroGTR.anoFabricacao = 2012;
  carroGTR.anoModelo = 2011;
  carroGTR.temABS = true;
  carroGTR.imprimirDados();

  final carroGolDoLeo = padrao.Carro();
  carroGolDoLeo.fabricante = "Volkswagem";
  carroGolDoLeo.modelo = "Gol";
  carroGolDoLeo.anoFabricacao = 1988;
  carroGolDoLeo.anoModelo = 1988;
  carroGolDoLeo.temABS = false;
  carroGolDoLeo.imprimirDados();

  //final carroF150 = Carro();
  //carroF150.imprimirDados();

  final carroGTR1 = com_parametros.Carro("nissan 1", "GTR", 2012, 2011, true);
  carroGTR1.imprimirDados();

  final carroGTR2 = inic_formal.Carro("nissan 2", "GTR", 2012, 2011, true);
  carroGTR2.imprimirDados();

  final carroGTR3 = op_posicional.Carro("nissan 3", "GTR", 2012, 2011, true);
  carroGTR3.imprimirDados();

  final carroGTR4 = op_posicional.Carro("nissan 4", "GTR", 2013, 2012, false);
  carroGTR4.imprimirDados();

  final carroGTR5 = opcinal_nomeado.Carro("nissan 5", "GTR");
  carroGTR5.imprimirDados();

  final carroGTR6 = opcinal_nomeado.Carro("nissan 6", "GTR", // anoFabricacao: 2013, 
                                                             anoModelo: 2012, 
                                                            // temABS: false
                                                             );
  carroGTR6.imprimirDados();
}

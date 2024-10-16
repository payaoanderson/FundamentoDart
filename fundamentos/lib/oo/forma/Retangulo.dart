import 'Forma.dart';
import 'enum.dart';

class Retangulo extends Forma {
   double comprimento = 0;
   double largura = 0;
  Retangulo(this.comprimento, this.largura) : super (tpForma.Retangulo);
  
  @override
  double calculaArea() {
    return comprimento * largura;
  }
}
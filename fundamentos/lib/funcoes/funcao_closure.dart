Function criarIncrementador(int incremento) {
  return (int numero) {
    return numero + incremento;
  };
}



void main() {

  var incrementarPor5 = criarIncrementador(5);
  print(incrementarPor5(10));
  
}

class Carro {
  String? fabricante;
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;

  Carro(String fabricante, 
  String modelo, 
  int anoFabricacao, 
  int anoModelo,
  bool temABS) {
  this.fabricante = fabricante;
  this.modelo = modelo;
  this.anoFabricacao = anoFabricacao;
  this.anoModelo = anoModelo;
  this.temABS = temABS;

  }

  void imprimirDados() {
    print("Fabricante: ${this.fabricante}\n"
        "Modelo: ${this.modelo}\n"
        "Ano de Fabricação: ${this.anoFabricacao}\n"
        "Ano do Modelo: ${this.anoModelo}\n"
        "Tem ABS: ${this.temABS == true ? "sim" : "não"}");
  }

  String retornaDados() {
    return "Fabricante: ${this.fabricante}\n"
        "Modelo: ${this.modelo}\n"
        "Ano de Fabricação: ${this.anoFabricacao}\n"
        "Ano do Modelo: ${this.anoModelo}\n"
        "Tem ABS: ${this.temABS == true ? "sim" : "não"}";
  }

  @override
  String toString() {
    return retornaDados();
  }
}

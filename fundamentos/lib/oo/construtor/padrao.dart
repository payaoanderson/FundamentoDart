class Carro {
  String? fabricante;
  String? modelo;
  int? anoFabricacao;
  int? anoModelo;
  bool? temABS;

  Carro({
    this.fabricante,
    this.modelo,
    this.anoFabricacao,
    this.anoModelo,
    this.temABS,
  });

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

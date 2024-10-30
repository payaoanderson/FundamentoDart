void main(List<String> args) {
  print("o literal de um map e igual a set ultilizando as chaves {}");
  print("para diferenciaer utiklizamos os genericios na declaração");
  print("- um para definir a chave ");
  print("- outro para definir o valor");

  final mapaDePacientes = <String, String>{
    "nome": "fulano de tal",
    "funcao": "desenvolvedor"
  };

  Map<String, String> mapaDePacientesNaoPermiteNulos = {};
  Map<String, String>? mapaDePacientesPermiteNulos = null;
  Map<String?, String> mapaDePacientesPermiteChavesNulos = {
    null: "fulano de tal",
    null: "desenvolvedor"
  };

}

import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;

  Usuario({
    required this.nome,
    required this.idade,
    required this.eEstudante,
  });

  Map<String, dynamic> paraJson() {
    return {
      "nome": nome,
      "idade": idade,
      "eEstudante": eEstudante,
    };
  }

  factory Usuario.deJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json["nome"],
      idade: json["idade"],
      eEstudante: json["eEstudante"],
    );
  }
}

void main() {
  String jsonString = '{"nome":"alice", "idade":30, "eEstudante":"false"}';

  Map<String, dynamic> usuarioJson = jsonDecode(jsonString);

  Usuario usuario = Usuario.deJson(usuarioJson);

  print(
      '''${usuario.nome},
       idade: ${usuario.idade},
       Estudante: ${usuario.eEstudante}''');

  String jsonSaida = jsonEncode(usuario.paraJson());
  print(jsonSaida);
}

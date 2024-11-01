import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;
  List<String> telefones;
  List<String> emails;
  Usuario(
      {required this.nome,
      required this.idade,
      required this.eEstudante,
      required this.telefones,
      required this.emails});

  Map<String, dynamic> paraJson() {
    return {
      "nome": nome,
      "idade": idade,
      "eEstudante": eEstudante,
      "telefones": telefones,
      "emails": emails
    };
  }

  factory Usuario.deJson(Map<String, dynamic> json) {
    return Usuario(
      nome: json["nome"],
      idade: json["idade"],
      eEstudante: json["eEstudante"],
      telefones: List<String>.from(json["telefones"]),
      emails: List<String>.from(json["emails"]),
    );
  }
}

void main() {
  String jsonString =
      '''{"nome":"alice", "idade":30, "eEstudante":"false", "telefones": ["1123-4444", "1472-1111",], "emails": ["alice@gmail.com", "alice@hotmail.com"]}''';

  Map<String, dynamic> usuarioJson = jsonDecode(jsonString);

  Usuario usuario = Usuario.deJson(usuarioJson);

  print('''${usuario.nome},
       idade: ${usuario.idade},
       Estudante: ${usuario.eEstudante}''');

  print("telefone: ${usuario.telefones.join(", ")}");
  print("E-mail: ${usuario.emails.join(", ")}");

  String jsonSaida = jsonEncode(usuario.paraJson());
  print(jsonSaida);
}

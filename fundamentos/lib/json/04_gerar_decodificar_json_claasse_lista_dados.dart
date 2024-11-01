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
  String jsonString = '''
[

 {"nome":"alice", "idade":30, "eEstudante":false},
 {"nome":"bob", "idade":25, "eEstudante":true},
 {"nome":"charlie", "idade":28, "eEstudante":"false"}
]
''';
  List<dynamic> usuariosJson = jsonDecode(jsonString);

  List<Usuario> usuarios =
      usuariosJson.map((usuariosJson) => Usuario.deJson(usuariosJson)).toList();

  for (var usuario in usuarios) {
    print('''${usuario.nome},
       idade: ${usuario.idade},
       Estudante: ${usuario.eEstudante ? "sim" : "nao"}''');
  }

  String jsonSaida =
      jsonEncode(usuarios.map((usuario) => usuario.paraJson()).toList());
  print(jsonSaida);
}

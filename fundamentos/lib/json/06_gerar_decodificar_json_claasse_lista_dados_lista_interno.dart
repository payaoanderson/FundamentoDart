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



   String jsonString = '''[
                         {"nome":"Alice",
                          "idade":30,
                          "eEstudante":false,
                          "telefones": ["1234-5678","9876-5432"],
                          "emails": ["alice@gmail.com", "alice@hotmail.com"]
                          },
                         {"nome":"Bob",
                          "idade":25,
                          "eEstudante":true,
                          "telefones": ["2345-6789"],
                          "emails": ["bob@gmail.com"]
                          },
                         {"nome":"Carol",
                          "idade":29,
                          "eEstudante":false,
                          "telefones": ["3456-7890","3155-5698"],
                          "emails": ["carol@hotmail.com"]
                          }                          
                          ]''';
//   String jsonString = '''
// [
//  {"nome":"Alice",
//    "idade":30,
//    "eEstudante":false,
//    "telefones": ["1234-5678","9876-5432"],
//   "emails": ["alice@gmail.com", "alice@hotmail.com"]
//  },
// {"nome":"alice", 
// "idade":30, 
// "eEstudante":false, 
// "telefones": ["1123-4444", "1472-1111",], 
// "emails": ["alice@gmail.com", "alice@hotmail.com"]
// },
// {"nome":"bob", "idade":25, "eEstudante":true, "telefones": ["1123-4444", "1472-1111",], "emails": ["bob@gmail.com", "bob@hotmail.com"]},
// {"nome":"carol", "idade":29, "eEstudante":false, "telefones": ["1123-4444", "1472-1111",], "emails": ["carol@gmail.com", "carol@hotmail.com"]}
//     ]''';

  List<dynamic> usuariosJson = jsonDecode(jsonString);

  List<Usuario> usuarios =
      usuariosJson.map((usuarioJson) => Usuario.deJson(usuarioJson)).toList();

  for (var usuario in usuarios) {
    print('''${usuario.nome},
       idade: ${usuario.idade},
       Estudante: ${usuario.eEstudante}''');
    print("telefone: ${usuario.telefones.join(", ")}");
    print("E-mail: ${usuario.emails.join(", ")}");
  }

  String jsonSaida =
      jsonEncode(usuarios.map((usuario) => usuario.paraJson()).toList());
  print(jsonSaida);
}

import 'dart:convert';

void main() {
  String jsonString = '{"nome": "alice", "idade": 30, "eEstudante": false}';
  Map<String, dynamic> usuario = jsonDecode(jsonString);

  print("nome: ${usuario["nome"]}");
  print("idade: ${usuario["idade"]}");
  print('eEstudante: ${usuario['eEsudante'] ? 'sim' : 'nao'}');
}

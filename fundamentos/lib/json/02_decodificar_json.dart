import 'dart:convert';

void main() {
  String jsonString = '{"nome": "alice", "idade": 30, "eEstudante": false}';
  Map<String, dynamic> usuario = jsonDecode(jsonString);

  print('nome: ${usuario['nome']}');
  print('idade: ${usuario['idade']}');
  print('É estudante: ${usuario['eEsudante'] ? 'sim' : 'nao'}');
}

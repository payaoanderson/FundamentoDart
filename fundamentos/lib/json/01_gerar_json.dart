import 'dart:convert';

void main() {
  Map<String, dynamic> usuario = {
    "nome": "alice",
    "idade": 30,
    "eEstudante": false
  };

  String jsonString = jsonEncode(usuario);
  print(jsonString);
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'endereco.dart';

class EnderecoController {
  Future<Endereco> buscarEndereco(String cep) async {
    final url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final resposta = await http.get(url);

    if (resposta.statusCode == 200) {
      Map<String, dynamic> cep = jsonDecode(resposta.body);
      return Endereco.deJson(cep);
    } else {
      throw Exception('erro na busca do endereço: ${resposta.statusCode}');
      // return null
    }
  }
}




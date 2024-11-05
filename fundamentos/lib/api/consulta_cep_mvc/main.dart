import 'dart:io';

import 'endereco_controller.dart';
import 'endereco.dart';

String validaCEP(String? cep) {
  if (cep == null || cep.isEmpty) {
    throw Exception('cep invalido! tente novamente');
  }else{
  cep = cep.replaceAll(RegExp(r'[^0-9]'), '');
  if (cep.length != 8) {
    throw Exception("cep invalido! deve possuir 8 digitos");
  } else {
    return cep;

    }
  }
}

void main(List<String> args) async {
  final controller = EnderecoController();
  print("informe um cep");

  String? cep = stdin.readLineSync();

  //if (cep != null && cep.isNotEmpty) {
    try {
      Endereco endereco = await controller.buscarEndereco(validaCEP(cep));

      print("Logradouro: ${endereco.logradouro}");
      print("Bairro: ${endereco.bairro}");
      print("Cidade: ${endereco.localidade}");
      print("UF: ${endereco.uf}");
    } catch (e) {
      print(e);
    }
  //} else {
    //print("cep invalido! tente novamente");
  //}
}

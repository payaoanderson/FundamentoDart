void main() {
  final nome = "fulano de tal";

  var nome_substring = nome.substring(7);
  print(nome_substring);

  nome_substring = nome.substring(0, 6);
  print(nome_substring);

  var sexo = "MASCULINO";

  var sexoSigla = sexo.substring(0, 1);
  if (sexoSigla == 'M') {
    print('Sexo Masculino');
  }

  if (sexo.startsWith('M')) {
    print('Sexo Masculino');
  }

  if (sexo.toLowerCase().startsWith('m')) {
    print('Sexo Masculino Com m minusculo');
  }

  if (nome.toUpperCase().contains('TAL')) {
    print('É da familia TAL');
  }

  final primeiroNome = 'Fulano';
  final segundoNome = 'de Tal';

  final saudacaoConcatenacao =
      'Olá' + primeiroNome + '' + segundoNome + 'seja bem vindo';

  print(saudacaoConcatenacao);

  final saudacaoInterpolacao =
      'Olá + $primeiroNome $segundoNome seja bem vindo';
  print(saudacaoInterpolacao);

  final saudacaoInpolacaoFuncao =
      'olá ${primeiroNome.toUpperCase()} ${segundoNome.toUpperCase()}seja bem vindo';

  print(saudacaoInpolacaoFuncao);
  var paciente = 'fulano de tal| 30 anos | brasileiro';

  final dadosPaciente = paciente.split('|');

  print(
      'nome: ${dadosPaciente[0]} Idade: ${dadosPaciente[1]} nacionalidade: ${dadosPaciente[2]}');

  paciente = 'Beltrano Santos| 25 anos| Holandes';

  dadosPaciente.addAll(paciente.split('|'));
  print(
      'nome: ${dadosPaciente[3]} Idade: ${dadosPaciente[4]} nacionalidade: ${dadosPaciente[5]}');

  final listaPacienteString = [
    'fulano de tal| 30 anos | brasileiro'
        'beltrano santos | 25 anos | holandes'
  ];

  listaPacienteString.add('sicrano da silva| 19 anos| alemanha');
  for (var paciente in listaPacienteString) {
    final dadosPaciente = paciente.split('|');

    print(
        'nome: ${dadosPaciente[0]} Idade: ${dadosPaciente[1]} nacionalidade: ${dadosPaciente[2]}');
  }

  final listaPacienteLista = [
    ['fulano de tal', '30 anos', 'brasileiro'],
    ['beltrano santos', '25 anos', 'holandes']
  ];

  paciente = 'sicrano da silva| 19 anos| alemanha';
  listaPacienteLista.add(paciente.split('|'));
  for (var dadosPaciente in listaPacienteLista) {
    print(
        'nome: ${dadosPaciente[0]} Idade: ${dadosPaciente[1]} nacionalidade: ${dadosPaciente[2]}');
  }

  print('primeiro registro');
  print(
      'nome: ${listaPacienteLista[0][0]} + Idade: ${listaPacienteLista[0][1]} + nacionalidade: ${listaPacienteLista[0][2]}');
  print(
      'nome: ${listaPacienteLista[1][0]} + Idade: ${listaPacienteLista[1][1]} + nacionalidade: ${listaPacienteLista[1][2]}');
}

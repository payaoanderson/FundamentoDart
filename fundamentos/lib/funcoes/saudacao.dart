String saudacao(String name, {DateTime}) {
  DateTime ??= DateTime.now();
  int hour = DateTime.hour;
  if (hour < 12) {
    return 'Bom Dia, $name!';
  } else if (hour < 18) {
    return 'Boa tarde, $name!';
  } else {
    return 'boa noite, $name!';
  }
}

void main(List<String> args) {
  print(saudacao('maria'));
  print(saudacao('joao', DateTime: DateTime(2023, 6, 13, 15, 30)));
}

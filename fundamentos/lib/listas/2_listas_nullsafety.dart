void main() {
  // ? = nullable (aceita null)

  List<String> nome = [];

  List<String>? nomesNulos;
  //nomesNulos = ["fulano", null];

  List<String?> nomesInternosAceitaNulos = ["fulano", null];

  List<String?>? nomesNulosInternosAceitaNulos = null;

  var nomeInferencia = <String>[];

  final nomesInternosAceitaNulosInferencia = <String?>["fulano", null];

  //var nomesNulosInternosAceitaNulosInferencias = <String?>?null;
}

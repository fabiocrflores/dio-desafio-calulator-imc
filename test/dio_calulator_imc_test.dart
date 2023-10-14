import 'package:dio_calulator_imc/models/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test(
      'deve retornar valor do imc corretamente quando peso é 68kg e altura é 1.68m',
      () {
    const esperado = 24.09;
    final pessoaMock = Pessoa("Fabio", 68.0, 1.68);

    expect(pessoaMock.calcularIMC(), esperado);
  });

  group('deve retornar a classificação', () {
    final pessoaMock = Pessoa("Fabio", 68.0, 1.68);
    var valoresParaTeste = {
      [0.01, 15.99]: 'Magreza Grave',
      [16.0, 16.99]: 'Magreza Moderada',
      [17.0, 18.49]: 'Magreza Leve',
      [18.5, 24.99]: 'Saudável',
      [25.0, 29.99]: 'Sobrepreso',
      [30.0, 34.99]: 'Obesidade Grau I',
      [35.0, 39.99]: 'Severa',
      [40.0, 100.0]: 'Mórbida'
    };

    valoresParaTeste.forEach((valores, esperado) {
      var mensagem = (valores[0] == 40.0)
          ? "é maior ou igual a 40"
          : "está entre $valores";
      for (var valor in valores) {
        test('$esperado quando o imc $mensagem - valor para teste: $valor', () {
          expect(pessoaMock.getClassificacao(valor), equals(esperado));
        });
      }
    });
  });
}

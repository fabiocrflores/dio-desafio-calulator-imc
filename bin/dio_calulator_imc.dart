import 'package:dio_calulator_imc/models/Pessoa.dart';
import 'package:dio_calulator_imc/utils/ConsoleUtil.dart';

void main(List<String> arguments) {
  try {
    var nome = ConsoleUtil.lerTexto("seu nome");
    var peso = ConsoleUtil.letNumeroDecimal("seu peso (kg)");
    var altura = ConsoleUtil.letNumeroDecimal("sua altura (m)");

    final Pessoa pessoa = Pessoa(nome, peso, altura);
    pessoa.imprimirImc();
  } catch (e) {
    print(e);
  }
}

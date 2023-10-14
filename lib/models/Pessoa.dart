import 'ClassificacaoEnum.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void imprimirImc() {
    final imc = calcularIMC();
    print("$_nome seu IMC é de $imc, situação atual: ${getClassificacao(imc)}");
  }

  double calcularIMC() {
    double altura2 = _altura * _altura;
    double imc = _peso / altura2;

    return double.parse(imc.toStringAsFixed(2));
  }

  String getClassificacao(double imc) {
    return switch (imc) {
      < 16.0 => ClassificacaoEnum.magrezaGrave.descricao,
      >= 16.0 && < 17.0 => ClassificacaoEnum.magrezaModerada.descricao,
      >= 17.0 && < 18.5 => ClassificacaoEnum.magrezaLeve.descricao,
      >= 18.5 && < 25.0 => ClassificacaoEnum.saudavel.descricao,
      >= 25.0 && < 30.0 => ClassificacaoEnum.sobrepeso.descricao,
      >= 30.0 && < 35.0 => ClassificacaoEnum.obesidadeGrauI.descricao,
      >= 35.0 && < 40.0 => ClassificacaoEnum.obesidadeGrauII.descricao,
      _ => ClassificacaoEnum.obesidadeGrauIII.descricao
    };
  }
}

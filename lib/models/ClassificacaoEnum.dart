enum ClassificacaoEnum {
  magrezaGrave('Magreza Grave'),
  magrezaModerada('Magreza Moderada'),
  magrezaLeve('Magreza Leve'),
  saudavel('Saudável'),
  sobrepeso('Sobrepreso'),
  obesidadeGrauI('Obesidade Grau I'),
  obesidadeGrauII('Severa'),
  obesidadeGrauIII('Mórbida');

  final String descricao;

  const ClassificacaoEnum(this.descricao);
}

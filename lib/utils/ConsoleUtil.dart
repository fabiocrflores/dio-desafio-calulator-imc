import 'dart:convert';
import 'dart:io';

class ConsoleUtil {
  static String lerTexto(String texto) {
    print("informe $texto");
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double letNumeroDecimal(String texto) {
    try {
      return double.parse(lerTexto(texto));
    } catch (e) {
      throw Exception("valor incorreto!");
    }
  }
}

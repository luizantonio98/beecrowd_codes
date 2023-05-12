//@dart = 2.9
import 'dart:io';
import 'dart:math';

void main() {
  double X1, Y1, X2, Y2, resultado;
  List<double> linha;
  
  linha = stdin.readLineSync().split(" ").map((k) => double.parse(k)).toList();
  X1 = linha[0];
  Y1 = linha[1];

  linha = stdin.readLineSync().split(" ").map((k) => double.parse(k)).toList();
  X2 = linha[0];
  Y2 = linha[1];

  resultado = sqrt(pow(X2 - X1, 2) + pow(Y2 - Y1, 2));

  print(resultado.toStringAsFixed(4));
}
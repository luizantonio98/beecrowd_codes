// @dart=2.9
import 'dart:io';
import 'dart:math';

void main() {
  double A,B,C, areaTriangulo, areaCirculo, areaTrapezio, areaQuadrado, areaRetangulo;
  double pi = 3.14159;

  List<double> entrada;
  entrada = stdin.readLineSync().split(" ").map((e) => double.parse(e)).toList();

  A = entrada[0];
  B = entrada[1];
  C = entrada[2];

  areaTriangulo = (A * C)/2;
  areaCirculo = pi * pow(C,2);
  areaTrapezio = ((A + B) * C)/2;
  areaQuadrado = B * B;
  areaRetangulo = A * B;
  
print("TRIANGULO: ${areaTriangulo.toStringAsFixed(3)}");
print("CIRCULO: ${areaCirculo.toStringAsFixed(3)}");
print("TRAPEZIO: ${areaTrapezio.toStringAsFixed(3)}");
print("QUADRADO: ${areaQuadrado.toStringAsFixed(3)}");
print("RETANGULO: ${areaRetangulo.toStringAsFixed(3)}");
}
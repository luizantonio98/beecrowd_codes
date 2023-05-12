//@dart = 2.9
import "dart:io";
void main()
{
  double consumo = 12.0;

  double tempo = double.parse(stdin.readLineSync());
  double vM = double.parse(stdin.readLineSync());

  double distancia = vM * tempo;
  double litros = distancia / consumo;
  print("${litros.toStringAsFixed(3)}");
}

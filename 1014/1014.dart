//@dart = 2.9
import "dart:io";
import "dart:math";
void main()
{
  double quilometragem, gasolina, mediaConsumo;

  quilometragem = double.parse(stdin.readLineSync());
  gasolina = double.parse(stdin.readLineSync());

  mediaConsumo = quilometragem/ gasolina;
  print("VOLUME = ${mediaConsumo.toStringAsFixed(3)} km/l");
}

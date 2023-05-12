//@dart = 2.9
import "dart:io";
import "dart:math";
void main()
{
  double raio, volume, pi;
  pi = 3.14159;

  raio = double.parse(stdin.readLineSync());
  volume = 4/3*pi*pow(raio,3);

  print("VOLUME = ${volume.toStringAsFixed(3)}");
}

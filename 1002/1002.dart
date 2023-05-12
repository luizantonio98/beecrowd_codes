//@dart = 2.9
import "dart:io";
import "dart:math";
void main(){
  double value = double.parse(stdin.readLineSync());
  double numero = 3.14159* (pow(value,2));
  print("A=${numero.toStringAsFixed(4)}");
}





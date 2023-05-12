//@dart = 2.9
import "dart:io";
void main(){
  double A = double.parse(stdin.readLineSync());
  double B = double.parse(stdin.readLineSync());
  double C = double.parse(stdin.readLineSync());

  double salary = B*C;

  print("NUMBER = ${A.toStringAsFixed(0)}");
  print("SALARY = U\$ ${salary.toStringAsFixed(2)}");
}

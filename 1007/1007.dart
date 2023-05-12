//@dart = 2.9
import "dart:io";
void main(){
  int a = int.parse(stdin.readLineSync());
  int b = int.parse(stdin.readLineSync());
  int c = int.parse(stdin.readLineSync());
  int d = int.parse(stdin.readLineSync());
  int resp = a*b-c*d;
  print("DIFERENCA = $resp");
}



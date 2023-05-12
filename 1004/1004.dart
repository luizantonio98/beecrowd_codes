//@dart = 2.9
import "dart:io";
void main(){
  print("Digite algo: ");
  int a = int.parse(stdin.readLineSync());
  int b = int.parse(stdin.readLineSync());
  int resp = a*b;
  print("PROD = $resp");
}



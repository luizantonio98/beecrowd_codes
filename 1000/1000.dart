//@dart = 2.9
import "dart:io";
void main(){
  print("Digite algo: ");
  int value1 = int.parse(stdin.readLineSync());
  int value2 = int.parse(stdin.readLineSync());
  int resp = value1+value2;
  print("X = $resp");
}





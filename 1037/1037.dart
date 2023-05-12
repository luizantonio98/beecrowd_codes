//@dart = 2.9
import "dart:io";
void main(){
  double A = double.parse(stdin.readLineSync());
  
  if (A < 0 || A > 100)
    print("Fora de intervalo");
  else if (A > 75)
    print("Intervalo (75,100]");
  else if (A > 50)
    print("Intervalo (50,75]");
  else if (A > 25)
    print("Intervalo (25,50]");
  else
    print("Intervalo (0,25]");
}

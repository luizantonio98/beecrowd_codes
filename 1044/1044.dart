//@dart = 2.9
import 'dart:io';   

void main() {
  double A,B;
  List<double> linha;
  
  linha = stdin.readLineSync().split(" ").map((k) => double.parse(k)).toList();
  A = linha[0];
  B = linha[1];

  if (A >= B && A%B == 0)
      print("Sao Multiplos");
  else if (B> A && B%A == 0)
      print("Sao Multiplos");
  else
    print("Nao sao Multiplos");
    
}
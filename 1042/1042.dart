//@dart = 2.9
import "dart:io";
void main() {
  int A,B,C;
  int primeiro, segundo, terceiro;
  List<int> linha;
  
  linha = stdin.readLineSync().split(" ").map((k) => int.parse(k)).toList();
  A = linha[0];
  B = linha[1];
  C = linha[2];

  if (A>= B && A>= C)
  {
    primeiro = A;
    if (B >= C)
    {
      segundo = B;
      terceiro = C;
    }
    else
    {
      segundo = C;
      terceiro = B;
    }
 }
  else if (B >=A && B >= C)
  {
    primeiro = B;
    if (A >= C)
    {
      segundo = A;
      terceiro = C;
    }
    else
    {
      segundo = C;
      terceiro = A;
    } 
  }
  else if (C >= B && C>= A)
  {
    primeiro = C;
    if (B >= A)
    {
      segundo = B;
      terceiro = A;
    }
    else
    {
      segundo = A;
      terceiro = B;
    }
  }
  print("$terceiro\n$segundo\n$primeiro\n");
  print("$A\n$B\n$C");
}


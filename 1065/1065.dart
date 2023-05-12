//@dart = 2.9
import "dart:io";

void main()
{
  int A,B,C,D,E, contador;
  contador = 0;

  A = int.parse(stdin.readLineSync());
  B = int.parse(stdin.readLineSync());
  C = int.parse(stdin.readLineSync());
  D = int.parse(stdin.readLineSync());
  E = int.parse(stdin.readLineSync());

  if (A % 2 == 0) 
    contador += 1;
  if( B % 2 == 0) 
    contador += 1;
  if( C % 2 == 0)
    contador += 1;
  if( D % 2 == 0) 
    contador += 1;
  if( E % 2 == 0) 
    contador += 1;

  print("$contador valores pares");
}
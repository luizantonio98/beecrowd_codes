//@dart = 2.9
import "dart:io";

void main()
{
  int valor = int.parse(stdin.readLineSync());
  int contador = 0;
  List<int> lista = [];
  
  for(int i = 0; i < 1000; i++) 
  {
    if (contador == valor)
      contador = 0;
    lista.add(contador);
    contador ++;
    print("N[$i] = ${lista}");
  }
  
}
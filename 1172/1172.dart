//@dart = 2.9
import "dart:io";

void main()
{
  List<int> lista = [];
  
  for(int i = 0; i < 10; i++) {
    int valor = int.parse(stdin.readLineSync());
    if (valor <= 0)
      valor = 1;
    lista.add(valor);
    print("X[$i] = ${lista[i]}");
  }
}
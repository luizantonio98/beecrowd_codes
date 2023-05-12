//@dart = 2.9
import "dart:io";

void main()
{
  double valor = double.parse(stdin.readLineSync());
  List<double> lista = [];
  lista.add(valor);
  print("N[0]= ${lista[0].toStringAsFixed(4)}");

  for(int i = 1; i < 100; i++) 
  {
    lista.add(valor/2);
    print("N[$i] = ${lista[i].toStringAsFixed(4)}");
    valor = valor / 2;
  }
    
}

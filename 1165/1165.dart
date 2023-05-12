//@dart = 2.9
import "dart:io";
import "dart:math";

void main()
{
  List<int> listaPrimos= [2,3,5,7,11,13,17,19,23]; // Percore a análise até 10^8
  int qtdEntradas = int.parse(stdin.readLineSync());
  for (int i = 0; i < qtdEntradas; i++);
  {
    int valor = int.parse(stdin.readLineSync());
    for(int j = 0; j <= listaPrimos.length; j++)
    {
      int quociente  = valor~/ listaPrimos[j];
      if (quociente < listaPrimos[j])
        break;
      else
      {
        if (valor % listaPrimos[j] == 0 )
        print("Valor $valor Náo é primo!");
        break;
      }
    }
  }
} 
//@dart = 2.9
import 'dart:io'; 
void main()
{
  List<int> lista;
  int entrada, menor;
  int posicao = 0;

  entrada = int.parse(stdin.readLineSync());
  lista = stdin.readLineSync().split(" ").take(entrada).map((e) => int.parse(e)).toList();
  menor = lista[0];

  for(int i = 0; i < entrada ; i++) 
  {
    if (lista[i] < menor)
    {
      menor = lista[i];
      posicao = i;
    }
  }
  print("Menor valor: $menor");
  print("Posicao: $posicao");
}



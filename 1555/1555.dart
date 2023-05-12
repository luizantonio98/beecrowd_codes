// @dart=2.9
import 'dart:io';
import "dart:math";

int espacamento(int ordem,matriz)
{
  String quantidade = matriz[ordem-1][ordem-1].toString();
  int quant = quantidade.length;
  return quant;
}

List<List<int>> criarMatriz(int ordem)
{
  return List.generate(ordem, (i) => List.filled(ordem,0));
}


List<List<String>> criarMatrizString(int ordem)
{
  return List.generate(ordem, (i) => List.filled(ordem,"0"));
}

void adicionarElementos(matriz, ordem, tipo, espaco)
{
  for(int i = 0; i < ordem; i++) 
  {
    for(int j = 0; j < ordem; j++) 
    {
      int valor = pow(2,(i+j));
      if (tipo == "inteiro")
        matriz[i][j] = valor;
      if (tipo == "string")
      {
        String value = valor.toString();
        while (value.length < espaco)
        {
          value = " "+ value;
        }
        matriz[i][j] = value;
      }
    }
  }
  return;
}

void printarMatriz(matriz, ordem, espaco)
{
  for(int i = 0; i < ordem; i++) 
  {
    for(int j = 0; j < ordem; j++)
    {
      stdout.write("${matriz[i][j]} "); 
    }
    stdout.write("\n");
  }
  print("");
  return;
}
void main()
{
  List<List<int>> matriz;
  List<List<String>> matrizString;
  int espaco;
  int ordem = int.parse(stdin.readLineSync());
  while (ordem != 0)
  {
    matriz = criarMatriz(ordem);
    matrizString = criarMatrizString(ordem);
    adicionarElementos(matriz, ordem, "inteiro", espaco);
    espaco = espacamento(ordem, matriz);
    adicionarElementos(matrizString, ordem, "string", espaco);
    printarMatriz(matrizString, ordem, espaco);

    ordem = int.parse(stdin.readLineSync());
  }
}
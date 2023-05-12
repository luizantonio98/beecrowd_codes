//@dart =2.9
import "dart:io";

List<List<double>> criarMatriz(int ordem)
{
  return List.generate(ordem, (i) => List.filled(ordem,0));
}

void printarMatriz(matriz, ordem)
{
  for(int i = 0; i < ordem; i++) 
  {
    for(int j = 0; j < ordem; j++)
      stdout.write("${matriz[i][j]} "); 
    stdout.write("\n");
  }
  print("");
  return;
}
void adicionarElementos(matriz, ordem)
{
  for(int i = 0; i < ordem; i++) 
  {
    for(int j = 0; j < ordem; j++) 
      matriz[i][j] = double.parse(stdin.readLineSync());
  }
  return;
}

bool diagonalPrincipal(i,j)
{
  if (i == j)
  {
    //print("[$i] e [$j] Faz parte da diagonal principal - Anulado");
    return true;
  }
  else
  {
    //print("[$i] e [$j] Não Faz parte da diagonal principal - Check");
    return false;
  }
}
bool diagonalSecundaria(i,j, ordem)
{
  if (i+j == ordem-1)
  {
    //print("[$i] e [$j] Faz parte da diagonal secundária - Anulado");
    return true;  
  }
    
  else
  {
    //print("[$i] e [$j] Não parte da diagonal secundária - Check");
    return false;
  }
}

int superior(ordem)
{
  int superior = ordem ~/ 2;
  //print("Superior = $superior");
  return superior;
}

bool acimaDiagonalPrincipal(i, j)
{
  if (j > i)
  {
    if (i>=7)
    //print("[$i] e [$j] está acima da diagonal principal - Anulado");
    return true;
  }
  else
  {
    if (i>=7)
    //print("[$i] e [$j] está abaixo da diagonal principal - Check");
    return false;
  }
}

bool acimaDiagonalSecundaria(i, j, ordem)
{
  
  if (j < i && (i + j < 11 ))
  {
    if (i>=7)
    //print("[$i] e [$j] está acima da diagonal secundária - Anulado");
    return true;
  }
    
  else
  {
    if (i>=7)
    //print("[$i] e [$j] está abaixo da diagonal secundária - Check");
    return false;
  }
}

void main()
{
  List<List<double>> matriz;
  int ordem = 12;
  matriz = criarMatriz(ordem);
  String operacao = stdin.readLineSync();
  adicionarElementos(matriz, ordem);
  double soma = 0;
  int contador = 0;
  //printarMatriz(matriz,ordem);
  for(int i = 0; i < ordem; i++) 
  {
    if ( i > superior(ordem))
      for(int j = 0; j < ordem; j++) 
      {
        if (diagonalPrincipal(i,j) == false)
          if (diagonalSecundaria(i,j, ordem) == false)
            if (acimaDiagonalSecundaria(i, j, ordem) == false)
              if (acimaDiagonalPrincipal(i, j) == false)
              {
                //print("${matriz[i][j]} "); 
                soma += matriz[i][j];
                contador ++;
              }
                
      }
  }
  if (operacao == "S")
  {
    print("${soma.toStringAsFixed(1)}");
  }
  else
    print("${(soma/contador).toStringAsFixed(1)}");
}
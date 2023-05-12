// @dart=2.9
import 'dart:io';

bool meio(int N, int i, int j) 
{
  int posMeio = N ~/ 2;
  if (i == posMeio && j == posMeio) {
    return true;
  }
  return false;
}

bool interno(int N, int i, int j) 
{
  int posInterna = N ~/ 3;
  if(i >= posInterna && j >= posInterna && i < N - posInterna && j < N - posInterna) {
    return true;
  }
  return false;
}

bool diagonalPrincipal(int i, int j) 
{
  if(i == j) {
    return true;
  }
  return false;
}

bool diagonalSecundaria(int N, int i, int j) 
{
  if(i + j == N -1) {
    return true;
  }
  return false;
}

void main() 
{
  String input = stdin.readLineSync();

  while(input != null) 
  {
    int N = int.parse(input);
    List<List<int>> matriz = List.generate(N, (index) => List.filled(N, 0));

    for(int i = 0;i < N;i++) 
    {
      for(int j = 0;j < N;j++) 
      {
        if(meio(N, i, j)) {
          matriz[i][j] = 4;
        } else if(interno(N, i, j)) {
          matriz[i][j] = 1;
        } else if (diagonalPrincipal(i, j)) {
          matriz[i][j] = 2;
        } else if (diagonalSecundaria(N, i, j)) {
          matriz[i][j] = 3;
        }
      }
    }

    for(int i = 0;i < N;i++) 
    {
      for(int j = 0;j < N;j++) {
        stdout.write(matriz[i][j]);
      }
      stdout.write("\n");
    }

    stdout.write("\n");
    input = stdin.readLineSync();
  }
}
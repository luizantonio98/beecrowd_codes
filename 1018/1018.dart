//@dart = 2.9
import "dart:io";
void main(){
  int valor = int.parse(stdin.readLineSync());
  int notasCem = valor~/100;
  print("$valor");
  print("$notasCem nota(s) de R\$ 100,00");
  int resto = valor%100;

  valor = resto;
  int notasCinq = valor~/50;
  print("$notasCinq nota(s) de R\$ 50,00");
  resto = valor%50;

  valor = resto;
  int notasVinte = valor~/20;
  print("$notasVinte nota(s) de R\$ 20,00");
  resto = valor%20;

  valor = resto;
  int notasDez = valor~/10;
  print("$notasDez nota(s) de R\$ 10,00");
  resto = valor%10;

  valor = resto;
  int notasCinco = valor~/5;
  print("$notasCinco nota(s) de R\$ 5,00");
  resto = valor%5;

  valor = resto;
  int notasDois = valor~/2;
  print("$notasDois nota(s) de R\$ 2,00");
  resto = valor%2;

  valor = resto;
  int notasUm = valor~/1;
  print("$notasUm nota(s) de R\$ 1,00");
  resto = valor%1;

}


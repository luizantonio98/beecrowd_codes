//@dart = 2.9
import 'dart:io'; 
void main() 
{
  double salario, atual, imposto;
  
  salario = double.parse(stdin.readLineSync());
  atual = salario;
  imposto = 0;
  
  if (salario > 4500)
  {
    imposto = imposto + (atual - 4500)*0.28;
    atual = 4500;
  }
  if (salario > 3000)
  {
    imposto = imposto + (atual - 3000)*0.18;
    atual = 3000;
  }
  if (salario > 2000)
  {
    imposto = imposto + (atual - 2000)*0.08;
    atual = 2000;
    print("R\$ ${imposto.toStringAsFixed(2)}");
  }
  else
    print("Isento");
}
//@dart = 2.9
import "dart:io";
void main()
{
  String nome;
  double salario, vendas, total;
  nome = stdin.readLineSync();
  salario = double.parse(stdin.readLineSync());
  vendas = double.parse(stdin.readLineSync());
  
  total = salario + vendas*0.15;

  print("TOTAL = R\$ ${total.toStringAsFixed(2)}");
}
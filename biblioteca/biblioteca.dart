// @dart=2.9
import 'dart:io';

// O sistema deve:
// Registrar todos os livros armazenados em uma bublioteca
// Deve permitir que o usuário pegue emprestado livros de 1 em 1
// Deve permitir que o usuário devolva os livros

class Livro {
  String nome;
  int quantidade;

  Livro(String nome, int quantidade) {
    this.nome = nome;
    this.quantidade = quantidade;
  }
}

class Biblioteca {
  List<Livro> acervo = [];

  int get quantidadeDeLivros {
    return this.acervo.length;
  }

  void pegarLivro(int i) {
    if(i > this.quantidadeDeLivros || i < 0) {
      print("Opção inválida");
    } else {
      Livro livroAtual = this.acervo[i];
      if(livroAtual.quantidade <= 0) {
        print("Não temos mais este livro no acervo");
      } else {
        livroAtual.quantidade--;
        var duration = const Duration(seconds: 1);
        print("Aguarde...");
        sleep(duration);
        print("\x1B[2J\x1B[0;0H");
        print("Livro emprestado com sucesso!");
      }
    }
  }

  void devolverLivro(int i) {
    if(i > this.quantidadeDeLivros || i < 0) {
      print("Opção inválida");
    } else {
      Livro livroAtual = this.acervo[i];
      livroAtual.quantidade++;

      print("Livro devolvido com sucesso!");
    }
  }

  void registrarLivro(Biblioteca biblioteca, String livro, int quantidade)
  {
    Livro novo = new Livro(livro, quantidade);
    biblioteca.acervo.add(novo);
    print("\x1B[2J\x1B[0;0H");
    print("Aguarde...");
    var duration = const Duration(seconds: 2);
    sleep(duration);
    print("Livro adicionado com sucesso!");
    sleep(duration);
  }
}

void interfacePegarLivro(Biblioteca biblioteca) {
  int opcao;

  do {
    print("\x1B[2J\x1B[0;0H");
    print("Escolha qual livro você gostaria de pegar emprestado:");

    print ("\n********** LIVROS ************");
    print(" ");
    print("     NOME (QTD):\n");

    for(int i = 0;i < biblioteca.quantidadeDeLivros;i++) {
      Livro livroAtual = biblioteca.acervo[i];
      stdout.write("${i + 1} - ${livroAtual.nome} (${livroAtual.quantidade})");
      print("");
    }
    print("");

    print("0 - Voltar para o menu inicial");
    stdout.write("Opçao selecionada: ");
    opcao = int.parse(stdin.readLineSync());

    if(opcao != 0) {
      biblioteca.pegarLivro(opcao - 1);
      stdout.write("Pressione enter para continuar: ");
      stdin.readLineSync();
    }
  } while(opcao != 0);
}

void interfaceDevolverLivro(Biblioteca biblioteca) {
  int opcao;

  do {
    print("Escolha qual livro você gostaria devolver");

    for(int i = 0;i < biblioteca.quantidadeDeLivros;i++) {
      Livro livroAtual = biblioteca.acervo[i];
      print("${i + 1} - ${livroAtual.nome}");
      print("");
    }

    print("0 - Voltar para o menu inicial");
    stdout.write("Opçao selecionada: ");
    opcao = int.parse(stdin.readLineSync());

    if(opcao != 0) {
      biblioteca.devolverLivro(opcao - 1);
      stdout.write("Pressione enter para continuar: ");
      stdin.readLineSync();
    }
  } while(opcao != 0);
}

void interfaceRegistrarLivro(biblioteca)
{
  String opcao;
  do 
  {
    stdout.write("Digite o nome do novo livro para ser adicionado: ");
    String livro = stdin.readLineSync();
    stdout.write("Digite a quantidade desejada: ");
    int quantidade = int.parse(stdin.readLineSync());
    stdout.write("Você deseja adicionar $quantidade unidades do livro $livro? ");
    opcao = stdin.readLineSync();
    print("\x1B[2J\x1B[0;0H");
    //print("Aguarde...");
    if (opcao == "sim")
    {
      biblioteca.registrarLivro(biblioteca, livro, quantidade);
    }
  } while (opcao != "sim");
}
void main() {
  Biblioteca biblioteca = new Biblioteca();

  biblioteca.acervo = [
    new Livro("O senhor dos Anéis", 3),
    new Livro("Harry Potter e o Cálice de Fogo", 2),
    new Livro("Cem anos de solidão", 0),
    new Livro("O sol é para todos", 8),
    new Livro("Crime e castigo", 5)
  ];
  
  int opcao;

  do {
    print("\x1B[2J\x1B[0;0H");
    print("  ##       ##       ##     ##        ##      ###    ########  ####       ##       #");
    print("##  ##     ##     ##  ##   ##        ##    ### ###     ##     ##       ##  ##   ## ## ");
    print("##  ##     ##     ##  ##   ##        ##    ##   ##     ##     ##      ##       ##   ## ");
    print("#####      ##     #####    ##        ##    ##   ##     ##     ####    ##       ##   ## ");
    print("##  ##     ##     ##  ##   ##        ##    ##   ##     ##     ##      ##       ####### ");
    print("##  ##     ##     ##  ##   ##        ##    ##   ##     ##     ##      ##       ##   ## ");
    print("####       ##     ####     ######    ##      ###       ##     ####      ####   ##   ## ");
    print("");
    print("Escolha uma das opcoes abaixo:");

    print("1 - Pegar livro emprestado");
    print("2 - Devolver livro");
    print("3 - Registrar novo livro");
    print("");
    print("0 - Encerrar");

    stdout.write("Opção selecionada: ");
    opcao = int.parse(stdin.readLineSync());
    print(Process.runSync("clear", [], runInShell: true).stdout);

    if (opcao == 1) {
      interfacePegarLivro(biblioteca);
    } else if (opcao == 2) {
      interfaceDevolverLivro(biblioteca);
    } else if (opcao == 3) {
      interfaceRegistrarLivro(biblioteca);
    }
  } while(opcao != 0);
}


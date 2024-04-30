import 'dart:io';

void calcularMaiorLado() {
  stdout.write("Digite o comprimento do primeiro cateto: ");
  double cateto1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o comprimento do segundo cateto: ");
  double cateto2 = double.parse(stdin.readLineSync()!);
  
  double maiorLado = sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  
  print("O comprimento do maior lado é: $maiorLado");
}

void imprimirConversaoDecimal() {
  stdout.write("Digite um número decimal: ");
  int decimal = int.parse(stdin.readLineSync()!);
  
  print("Representação em binário: ${decimal.toRadixString(2)}");
  print("Representação em octal: ${decimal.toRadixString(8)}");
  print("Representação em hexadecimal: ${decimal.toRadixString(16)}");
}

void calcularBhaskaraEquacao() {
  stdout.write("Digite o coeficiente 'a': ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o coeficiente 'b': ");
  double b = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o coeficiente 'c': ");
  double c = double.parse(stdin.readLineSync()!);
  
  double delta = pow(b, 2) - 4 * a * c;
  
  if (delta < 0) {
    print("A equação não possui raízes reais");
  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    
    print("As raízes da equação são: x1 = $x1 e x2 = $x2");
  }
}

void main() {
  while (true) {
    print("Selecione uma opção:");
    print("1 - Calcular o maior lado de um triângulo retângulo");
    print("2 - Conversão de número decimal para binário, octal e hexadecimal");
    print("3 - Calcular as raízes de uma equação de segundo grau usando a fórmula de Bhaskara");
    print("0 - Sair");
    
    String? opcao = stdin.readLineSync();
    
    switch (opcao) {
      case "1":
        calcularMaiorLado();
        break;
      case "2":
        imprimirConversaoDecimal();
        break;
      case "3":
        calcularBhaskaraEquacao();
        break;
      case "0":
        print("Encerrando o programa.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

import 'dart:math';

double calcularMaiorLado(double cateto1, double cateto2) {
  return sqrt(pow(cateto1, 2) + pow(cateto2, 2));
}

void main() {
  print("Calculadora do maior lado de um triângulo retângulo");
  stdout.write("Digite o comprimento do primeiro cateto: ");
  double cateto1 = double.parse(stdin.readLineSync()!);
  
  stdout.write("Digite o comprimento do segundo cateto: ");
  double cateto2 = double.parse(stdin.readLineSync()!);
  
  double maiorLado = calcularMaiorLado(cateto1, cateto2);
  
  print("O comprimento do maior lado é: $maiorLado");
}
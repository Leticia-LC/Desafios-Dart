import 'dart:math';

List<double> calcularBhaskara(double a, double b, double c) {
  double delta = pow(b, 2) - 4 * a * c;
  if (delta < 0) {
    return [];

  } else if (delta == 0) {
    double x = -b / (2 * a);
    return [x];

  } else {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    return [x1, x2];

  }
}

void main() {
  print("Calculadora da fórmula de Bhaskara");
  stdout.write("Digite o coeficiente 'a': ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o coeficiente 'b': ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o coeficiente 'c': ");
  double c = double.parse(stdin.readLineSync()!);
  
  List<double> raizes = calcularBhaskara(a, b, c);
  
  if (raizes.isEmpty) {
    print("A equação não possui raízes reais.");

  } else if (raizes.length == 1) {
    print("A raiz da equação é: ${raizes[0]}");

  } else {
    print("As raízes da equação são: ${raizes[0]} e ${raizes[1]}");
    
  }
}

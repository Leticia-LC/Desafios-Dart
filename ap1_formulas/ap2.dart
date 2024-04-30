void main() {
  stdout.write("Digite um número decimal: ");
  int decimal = int.parse(stdin.readLineSync()!);
  
  print("Representação em binário: ${decimal.toRadixString(2)}");
  print("Representação em octal: ${decimal.toRadixString(8)}");
  print("Representação em hexadecimal: ${decimal.toRadixString(16)}");
}

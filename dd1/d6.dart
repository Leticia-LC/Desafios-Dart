void main() {
  List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  
  numeros.sort();
  
  for (int numero in numeros) {
    String binario = numero.toRadixString(2);
    String octal = numero.toRadixString(8);
    String hexadecimal = numero.toRadixString(16);
    print('decimal: $numero, binário: $binario, octal: $octal, hexadecimal: $hexadecimal');
  }
}

//Utilizando For:
int somaFor(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  return soma;
}

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  print('for: ${somaFor(numeros)}');
}

//Utilizando While:
int somaWhile(List<int> numeros) {
  int soma = 0;
  int indice = 0;
  while (indice < numeros.length) {
    soma += numeros[indice];
    indice++;
  }
  return soma;
}

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  print('while: ${somaWhile(numeros)}');
}

//Utilizando método recursivo:
int somaRecursiva(List<int> numeros, int indice, int soma) {
  if (indice == numeros.length) {
    return soma;
  }
  soma += numeros[indice];
  return somaRecursiva(numeros, indice + 1, soma);
}

void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  print('recursão: ${somaRecursiva(numeros, 0, 0)}');
}

//utilizando método de coleção:
void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  int soma = numeros.reduce((value, element) => value + element);
  print('lista: $soma');
}


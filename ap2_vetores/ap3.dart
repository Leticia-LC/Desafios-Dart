import 'dart:math';

void main() {
  print("Digite o tamanho do vetor:");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> v1 = [];
  List<int> v2 = List.generate(tamanho, (_) => Random().nextInt(100));

  for (int i = 0; i < tamanho; i++) {
    stdout.write("Digite o valor para a posição $i do vetor v1: ");
    int valor = int.parse(stdin.readLineSync()!);
    v1.add(valor);
  }

  List<int> v3 = [];
  for (int i = 0; i < tamanho; i++) {
    v3.add(v1[i] + v2[i]);
  }

  print("Vetor v1:");
  print(v1);
  print("Vetor v2:");
  print(v2);
  print("Vetor v3 (soma de v1 e v2):");
  print(v3);
}

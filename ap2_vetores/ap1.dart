import 'dart:math';

void main() {
  print("Digite o tamanho do vetor:");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = List.generate(tamanho, (_) => Random().nextInt(100));

  print("Vetor gerado:");
  print(vetor);
}

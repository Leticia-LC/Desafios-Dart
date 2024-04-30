void main() {
  print("Digite o tamanho do vetor:");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = [];

  for (int i = 0; i < tamanho; i++) {
    stdout.write("Digite o valor para a posição $i: ");
    int valor = int.parse(stdin.readLineSync()!);
    vetor.add(valor);
  }

  print("Vetor informado:");
  print(vetor);
}

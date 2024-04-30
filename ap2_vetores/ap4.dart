void gerarVetorAleatorio() {
  print("Digite o tamanho do vetor:");
  int tamanho = int.parse(stdin.readLineSync()!);

  List<int> vetor = List.generate(tamanho, (_) => Random().nextInt(100));

  print("Vetor gerado:");
  print(vetor);
}

void preencherVetor() {
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

void gerarSomaVetores() {
  print("Digite o tamanho dos vetores:");
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

void main() {
  while (true) {
    print("Selecione uma opção:");
    print("1 - Gerar um vetor de números aleatórios");
    print("2 - Preencher um vetor manualmente");
    print("3 - Gerar vetores e somar elementos");
    print("0 - Sair");

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case "1":
        gerarVetorAleatorio();
        break;
      case "2":
        preencherVetor();
        break;
      case "3":
        gerarSomaVetores();
        break;
      case "0":
        print("Encerrando o programa.");
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

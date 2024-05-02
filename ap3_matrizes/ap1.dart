import 'dart:math';

List<List<int>> generateRandomMatrix(int rows, int cols) {
  var random = Random();
  return List.generate(rows, (i) => List.generate(cols, (j) => random.nextInt(100)));
  
}

void printMatrix(List<List<int>> matrix) {
  for (var row in matrix) {
    print(row.join(' '));

  }
}

void main() {
  print("Digite o número de linhas da matriz:");
  var rows = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz:");
  var cols = int.parse(stdin.readLineSync()!);

  var matrix = generateRandomMatrix(rows, cols);

  print("Matriz gerada:");
  printMatrix(matrix);
}

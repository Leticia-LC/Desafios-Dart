List<List<int>> multiplyMatrixByScalar(List<List<int>> matrix, int scalar) {
  return matrix.map((row) => row.map((element) => element * scalar).toList()).toList();
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

  print("Digite os valores da matriz:");
  var matrix = getUserInputMatrix(rows, cols);

  print("Digite o número real para multiplicar a matriz:");
  var scalar = int.parse(stdin.readLineSync()!);

  var matrizMultiplicada = multiplyMatrixByScalar(matrix, scalar);

  print("Matriz original:");
  printMatrix(matrix);
  print("Matriz multiplicada:");
  printMatrix(matrizMultiplicada);
}

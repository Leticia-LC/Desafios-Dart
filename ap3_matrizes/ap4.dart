List<List<int>> multiplyMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  var resultRows = matrix1.length;
  var resultCols = matrix2[0].length;
  var commonDimension = matrix1[0].length;

  List<List<int>> result = List.generate(resultRows, (_) => List.filled(resultCols, 0));

  for (var i = 0; i < resultRows; i++) {
    for (var j = 0; j < resultCols; j++) {
      for (var k = 0; k < commonDimension; k++) {
        result[i][j] += matrix1[i][k] * matrix2[k][j];
      }
    }
  }

  return result;
}

void printMatrix(List<List<int>> matrix) {
  for (var row in matrix) {
    print(row.join(' '));
    
  }
}

void main() {
  print("Digite o número de linhas da primeira matriz:");
  var rows1 = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da primeira matriz:");
  var cols1 = int.parse(stdin.readLineSync()!);

  print("Digite os valores da primeira matriz:");
  var matrix1 = getUserInputMatrix(rows1, cols1);

  print("Digite o número de linhas da segunda matriz:");
  var rows2 = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da segunda matriz:");
  var cols2 = int.parse(stdin.readLineSync()!);

  print("Digite os valores da segunda matriz:");
  var matrix2 = getUserInputMatrix(rows2, cols2);

  if (cols1 != rows2) {
    print("Impossível multiplicar as matrizes. O número de colunas da primeira matriz deve ser igual ao número de linhas da segunda matriz.");
    return;

  }

  var productMatrix = multiplyMatrices(matrix1, matrix2);

  print("Primeira matriz:");
  printMatrix(matrix1);
  print("Segunda matriz:");
  printMatrix(matrix2);
  print("Matriz produto:");
  printMatrix(productMatrix);
}

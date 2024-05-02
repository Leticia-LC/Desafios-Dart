List<List<int>> getUserInputMatrix(int rows, int cols) {
  List<List<int>> matrix = [];
  for (var i = 0; i < rows; i++) {
    print("Digite os valores da linha ${i + 1}:");
    var rowInput = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    matrix.add(rowInput);

  }
  return matrix;
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

  print("Matriz informada:");
  printMatrix(matrix);
}

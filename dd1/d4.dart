import 'dart:core';

void main() {
  DateTime dataAtual = DateTime(2022, 9, 5);
  print('Data atual: ${formatarData(dataAtual)}');

  DateTime dataCalculada = calcularDataUtil(dataAtual, 18);
  print('Data calculada: ${formatarData(dataCalculada)}');
}

DateTime calcularDataUtil(DateTime dataAtual, int diasUteis) {
  int diasRestantes = diasUteis;
  DateTime dataCalculada = dataAtual;
  while (diasRestantes > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));
    if (dataCalculada.weekday >= 1 && dataCalculada.weekday <= 5) {
      diasRestantes--;
    }
  }
  return dataCalculada;
}

String formatarData(DateTime data) {
  return '${data.day.toString().padLeft(2, '0')}/${data.month.toString().padLeft(2, '0')}/${data.year}';
}

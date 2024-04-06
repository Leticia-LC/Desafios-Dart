void main() {
  String paragrafo =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';

  print('Parágrafo: $paragrafo');
  print('Número de palavras: ${contarPalavras(paragrafo)}');
  print('Tamanho do texto: ${paragrafo.length}');
  print('Número de frases: ${contarFrases(paragrafo)}');
  print('Número de vogais: ${contarVogais(paragrafo)}');
  print('Consoantes encontradas: ${listarConsoantes(paragrafo)}');
}

int contarPalavras(String texto) {
  return texto.split(' ').length;
}

int contarFrases(String texto) {
  return texto.split('.').length;
}

int contarVogais(String texto) {
  var vogais = 'aeiouAEIOU';
  var count = 0;

  for (var letra in texto.runes) {
    if (vogais.runes.contains(letra)) {
      count++;
    }
  }

  return count;
}

String listarConsoantes(String texto) {
  var consoantes = '';
  var vogais = 'aeiouAEIOU';

  for (var letra in texto.runes) {
    var char = String.fromCharCode(letra);
    if (!vogais.contains(char) && char != ' ' && char != '.' && char != ',') {
      consoantes += char + ', ';
    }
  }

  return consoantes.isEmpty ? 'Nenhuma consoante encontrada' : consoantes;
}

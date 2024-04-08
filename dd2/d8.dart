import 'dart:math' as math;

class Figura {
  final String nome;
  final int codigo;

  Figura(this.nome, this.codigo);
}

final List<Figura> listaFiguras = List.generate(
  20,
  (index) => Figura('Figura ${index + 1}', index + 1),
);

class PacoteDeFiguras {
  final List<Figura> figuras;

  PacoteDeFiguras(this.figuras);
  
  factory PacoteDeFiguras.gerar(List<Figura> listaFiguras) {
    final random = math.Random();
    final pacote = <Figura>[];

    while (pacote.length < 4) {
      final figura = listaFiguras[random.nextInt(listaFiguras.length)];
      if (!pacote.contains(figura)) {
        pacote.add(figura);
      }
    }

    return PacoteDeFiguras(pacote);
  }
}

class Album {
  final List<Figura> figurasColadas = [];
  final List<Figura> figurasRepetidas = [];

  bool estaCompleto() {
    return figurasColadas.length == 20;
  }

  void adicionarFigura(Figura figura) {
    if (figurasColadas.length < 20) {
      if (figurasColadas.contains(figura)) {
        figurasRepetidas.add(figura);
      } else {
        figurasColadas.add(figura);
        figurasColadas.sort((a, b) => a.codigo.compareTo(b.codigo));
      }
    }
  }

  void imprimirFigurasColadas() {
    print('Figuras coladas no álbum:');
    for (final figura in figurasColadas) {
      print('${figura.codigo}: ${figura.nome}');
    }
  }
}

void main() {
  final album = Album();
  var pacote = PacoteDeFiguras.gerar(listaFiguras);

  while (!album.estaCompleto()) {
    for (final figura in pacote.figuras) {
      album.adicionarFigura(figura);
    }
    pacote = PacoteDeFiguras.gerar(listaFiguras);
  }

  print('Número de figuras repetidas: ${album.figurasRepetidas.length}');
  album.imprimirFigurasColadas();
}

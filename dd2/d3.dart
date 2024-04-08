class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int duracao;

  Musica(this.titulo, this.artista, this.album, this.duracao);

  double duracaoEmHoras() {
    return duracao / 3600;
  }

  @override
  String toString() {
    return 'Título: $titulo, Artista: $artista, Álbum: $album, Duração: ${duracao ~/ 60}:${duracao % 60}';
  }
}

class BibliotecaDeMusicas {
  List<Musica> _musicas = [];

  void adicionarMusica(Musica musica) {
    _musicas.add(musica);
  }

  void imprimirMusicas() {
    print('--- Biblioteca de Músicas ---');
    _musicas.forEach((musica) {
      print(musica);
    });
  }

  int getNumeroDeMusicas() {
    return _musicas.length;
  }

  double getDuracaoTotalEmHoras() {
    double duracaoTotal = 0;
    _musicas.forEach((musica) {
      duracaoTotal += musica.duracaoEmHoras();
    });
    return duracaoTotal;
  }

  List<Musica> buscarPorTitulo(String titulo) {
    return _musicas.where((musica) => musica.titulo.toLowerCase() == titulo.toLowerCase()).toList();
  }

  List<Musica> buscarPorArtista(String artista) {
    return _musicas.where((musica) => musica.artista.toLowerCase() == artista.toLowerCase()).toList();
  }

  List<Musica> buscarPorAlbum(String album) {
    return _musicas.where((musica) => musica.album.toLowerCase() == album.toLowerCase()).toList();
  }
}

void main() {
  var musica1 = Musica('Nobody', 'Mitski', 'Be the Cowboy', 354);
  var musica2 = Musica('Arabella', 'Arctic Monkeys', 'AM', 482);
  var musica3 = Musica('Meteor Shower', 'Cavetown', 'Cavetown', 490);

  var biblioteca = BibliotecaDeMusicas();

  biblioteca.adicionarMusica(musica1);
  biblioteca.adicionarMusica(musica2);
  biblioteca.adicionarMusica(musica3);

  biblioteca.imprimirMusicas();

  print('Número de músicas: ${biblioteca.getNumeroDeMusicas()}');
  print('Duração total em horas: ${biblioteca.getDuracaoTotalEmHoras()}');

  print('\nBusca por título:');
  var musicasPorTitulo = biblioteca.buscarPorTitulo('Arabella');
  if (musicasPorTitulo.isNotEmpty) {
    musicasPorTitulo.forEach((musica) => print(musica));
  } else {
    print('Nenhuma música encontrada com esse título.');
  }

  print('\nBusca por artista:');
  var musicasPorArtista = biblioteca.buscarPorArtista('Mitski');
  if (musicasPorArtista.isNotEmpty) {
    musicasPorArtista.forEach((musica) => print(musica));
  } else {
    print('Nenhuma música encontrada desse artista.');
  }

  print('\nBusca por álbum:');
  var musicasPorAlbum = biblioteca.buscarPorAlbum('Cavetown');
  if (musicasPorAlbum.isNotEmpty) {
    musicasPorAlbum.forEach((musica) => print(musica));
  } else {
    print('Nenhuma música encontrada nesse álbum.');
  }
}

import 'dart:collection';
import 'dart:math' as math;

class GeradorNomes {
  final _nomes = ['Arthur', 'Letícia', 'Thalyta', 'Ana', 'Lucas', 'Gabriel', 'Lucia', 'Mariana', 'Felipe', 'Gustavo'];
  final _sobrenomes = ['Cunha', 'Santos', 'Oliveira', 'Souza', 'Pereira', 'Lima', 'Ferreira', 'Almeida', 'Muller', 'Costa'];

  String gerarNomeAleatorio() {
    final random = math.Random();
    final nome = _nomes[random.nextInt(_nomes.length)];
    final sobrenome = _sobrenomes[random.nextInt(_sobrenomes.length)];
    return '$nome $sobrenome';
  }
}

class Pessoa {
  final String nome;

  Pessoa(this.nome);
}

void main() {
  final geradorNomes = GeradorNomes();
  final fila = Queue<Pessoa>();

  for (var i = 0; i < 10; i++) {
    final nomeAleatorio = geradorNomes.gerarNomeAleatorio();
    final pessoa = Pessoa(nomeAleatorio);
    fila.add(pessoa);
    print('(${pessoa.nome}) entrou na fila');
  }

  while (fila.isNotEmpty) {
    final pessoaAtendida = fila.removeFirst();
    print('(${pessoaAtendida.nome}) foi atendido(a)');
  }
}

import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedor = Fornecedor();

  for (var i = 0; i < 5; i++) {
    pessoa.refeicao(fornecedor);
  }

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  final String nome;
  final int calorias;
}

class Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = [
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  final _sanduichesDisponiveis = [
    Produto('Sanduiche de presunto', 350),
    Produto('Sanduiche de frango', 400),
    Produto('Sanduiche de queijo', 320),
    Produto('Sanduiche de atum', 280),
    Produto('Sanduiche de ovo', 250),
  ];

  final _bolosDisponiveis = [
    Produto('Bolo de chocolate', 500),
    Produto('Bolo de cenoura', 450),
    Produto('Bolo de limao', 400),
    Produto('Bolo de laranja', 420),
    Produto('Bolo de coco', 380),
  ];

  final _saladasDisponiveis = [
    Produto('Salada de alface', 100),
    Produto('Salada de tomate', 70),
    Produto('Salada de cenoura', 80),
    Produto('Salada de beterraba', 90),
    Produto('Salada de repolho', 120),
  ];

  final _petiscosDisponiveis = [
    Produto('Batata frita', 350),
    Produto('Coxinha', 300),
    Produto('Pastel', 250),
    Produto('Calabresa', 200),
    Produto('Bolinha de queijo', 180),
  ];

  final _ultraCaloricosDisponiveis = [
    Produto('Pizza', 800),
    Produto('Hamburguer', 600),
    Produto('Cachorro quente', 500),
    Produto('Lasanha', 700),
    Produto('Macarronada', 650),
  ];

  Produto fornecer(String tipo) {
    List<Produto> listaProdutos;
    switch (tipo) {
      case 'Bebida':
        listaProdutos = _bebidasDisponiveis;
        break;
      case 'Sanduiche':
        listaProdutos = _sanduichesDisponiveis;
        break;
      case 'Bolo':
        listaProdutos = _bolosDisponiveis;
        break;
      case 'Salada':
        listaProdutos = _saladasDisponiveis;
        break;
      case 'Petisco':
        listaProdutos = _petiscosDisponiveis;
        break;
      case 'UltraCalorico':
        listaProdutos = _ultraCaloricosDisponiveis;
        break;
      default:
        throw ArgumentError('Tipo de produto inválido');
    }

    return listaProdutos[_random.nextInt(listaProdutos.length)];
  }

  void informacoes() {
    print('Fornecedor de produtos');
  }
}

class Pessoa {
  int _caloriasConsumidas = 0;
  StatusCalorias _statusCalorias = StatusCalorias.Satisfeito;

  Pessoa() {
    final random = Random();
    final caloriasIniciais = random.nextInt(3000) + 1000; 
    _statusCalorias = _definirStatus(caloriasIniciais);
  }

  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Status de calorias: $_statusCalorias');
  }

  void refeicao(Fornecedor fornecedor) {
    if (_statusCalorias == StatusCalorias.DeficitExtremo ||
        _statusCalorias == StatusCalorias.Deficit) {
      final tipoRefeicao = _escolherTipoRefeicaoAleatoria();
      final produto = fornecedor.fornecer(tipoRefeicao);
      print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
      _caloriasConsumidas += produto.calorias;
      _atualizarStatus();
    } else {
      print('A pessoa está satisfeita e não precisa de mais refeições.');
    }
  }

  StatusCalorias _definirStatus(int calorias) {
    if (calorias <= 500) {
      return StatusCalorias.DeficitExtremo;
    } else if (calorias <= 1800) {
      return StatusCalorias.Deficit;
    } else if (calorias <= 2500) {
      return StatusCalorias.Satisfeito;
    } else {
      return StatusCalorias.Excesso;
    }
  }

  void _atualizarStatus() {
    _statusCalorias = _definirStatus(_caloriasConsumidas);
  }

  String _escolherTipoRefeicaoAleatoria() {
    final tiposRefeicao = [
      'Bebida',
      'Sanduiche',
      'Bolo',
      'Salada',
      'Petisco',
      'UltraCalorico',
    ];
    final random = Random();
    return tiposRefeicao[random.nextInt(tiposRefeicao.length)];
  }
}

enum StatusCalorias {
  DeficitExtremo,
  Deficit,
  Satisfeito,
  Excesso,
}

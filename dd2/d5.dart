import 'dart:math' as math;

class Item {
  final String nome;
  final int quantidade;

  Item(this.nome, this.quantidade);

  @override
  String toString() {
    return '$nome: $quantidade';
  }
}

class ListaDeCompras {
  List<Item> itensDesejados = [];
  List<Item> itensComprados = [];
  List<Item> itensSemEstoque = [];

  void incluirItemDesejado(String nome, int quantidade) {
    itensDesejados.add(Item(nome, quantidade));
  }

  void marcarComoComprado(String nome) {
    final index = itensDesejados.indexWhere((item) => item.nome == nome);
    if (index != -1) {
      itensComprados.add(itensDesejados.removeAt(index));
    }
  }

  void marcarComoSemEstoque(String nome) {
    final index = itensDesejados.indexWhere((item) => item.nome == nome);
    if (index != -1) {
      itensSemEstoque.add(itensDesejados.removeAt(index));
    }
  }

  void exibirItensDesejados() {
    print('--- Itens Desejados ---');
    for (var item in itensDesejados) {
      print(item);
    }
  }

  Item? escolherItemPendenteAleatoriamente() {
    if (itensDesejados.isEmpty) return null;
    final random = math.Random();
    return itensDesejados[random.nextInt(itensDesejados.length)];
  }

  void mostrarProgresso() {
    final totalItens = itensDesejados.length;
    final itensCompradosCount = itensComprados.length;
    print('Progresso: $itensCompradosCount/$totalItens');
  }
}

void main() {
  final listaDeCompras = ListaDeCompras();

  listaDeCompras.incluirItemDesejado('Maçã', 5);
  listaDeCompras.incluirItemDesejado('Banana', 3);
  listaDeCompras.incluirItemDesejado('Leite', 2);

  listaDeCompras.marcarComoComprado('Banana');
  listaDeCompras.marcarComoComprado('Leite');
  listaDeCompras.marcarComoSemEstoque('Maçã');

  listaDeCompras.exibirItensDesejados();

  final itemPendente = listaDeCompras.escolherItemPendenteAleatoriamente();
  if (itemPendente != null) {
    print('Item pendente escolhido aleatoriamente: $itemPendente');
  } else {
    print('Todos os itens foram comprados ou estão sem estoque.');
  }

  listaDeCompras.mostrarProgresso();
}

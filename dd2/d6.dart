import 'dart:collection';

class Carta {
  final String valor;
  final String naipe;

  Carta(this.valor, this.naipe);

  @override
  String toString() {
    return '$valor $naipe';
  }
}

void main() {
  final baralho = Queue<Carta>();

  baralho.addFirst(Carta('A', '\u2663'));
  baralho.addFirst(Carta('A', '\u2665')); 
  baralho.addFirst(Carta('A', '\u2660')); 
  baralho.addFirst(Carta('A', '\u2666')); 

  while (baralho.isNotEmpty) {
    final cartaRemovida = baralho.removeFirst();
    print('Removida carta: $cartaRemovida');
  }
}

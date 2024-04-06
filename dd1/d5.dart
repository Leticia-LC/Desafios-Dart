import 'dart:math';

void main() {
  List<String> nomes = [
    'Ana', 'Francisco', 'Joao', 'Pedro', 'Gabriel', 'Rafaela', 'Marcio', 'Jose', 'Carlos', 
    'Patricia', 'Helena', 'Camila', 'Mateus', 'Gabriel', 'Maria', 'Samuel', 'Karina', 
    'Antonio', 'Daniel', 'Joel', 'Cristiana', 'Sebastião', 'Paula'
  ];
  
  List<String> sobrenomes = [
    'Silva', 'Ferreira', 'Almeida', 'Azevedo', 'Braga', 'Barros', 'Campos', 'Cardoso', 
    'Teixeira', 'Costa', 'Santos', 'Rodrigues', 'Souza', 'Alves', 'Pereira', 'Lima', 
    'Gomes', 'Ribeiro', 'Carvalho', 'Lopes', 'Barbosa'
  ];
  
  String nomeAleatorio = gerarNomeAleatorio(nomes, sobrenomes);
  print('Nome: $nomeAleatorio');
}

String gerarNomeAleatorio(List<String> nomes, List<String> sobrenomes) {
  Random random = Random();
  String nome = nomes[random.nextInt(nomes.length)];
  String sobrenome = sobrenomes[random.nextInt(sobrenomes.length)];
  return '$nome $sobrenome';
}

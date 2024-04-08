import 'dart:math' as math;

abstract class FormaGeometrica {
  final String nome;

  FormaGeometrica(this.nome);

  double area();

  double perimetro();
}

class Circulo extends FormaGeometrica {
  final double raio;

  Circulo(String nome, this.raio) : super(nome);

  @override
  double area() {
    return math.pi * math.pow(raio, 2);
  }

  @override
  double perimetro() {
    return 2 * math.pi * raio;
  }
}

class Retangulo extends FormaGeometrica {
  final double altura;
  final double largura;

  Retangulo(String nome, this.altura, this.largura) : super(nome);

  @override
  double area() {
    return altura * largura;
  }

  @override
  double perimetro() {
    return 2 * (altura + largura);
  }
}

class Quadrado extends Retangulo {
  Quadrado(String nome, double lado) : super(nome, lado, lado);
}

class TrianguloEquilatero extends FormaGeometrica {
  final double lado;

  TrianguloEquilatero(String nome, this.lado) : super(nome);

  @override
  double area() {
    return (math.sqrt(3) / 4) * math.pow(lado, 2);
  }

  @override
  double perimetro() {
    return 3 * lado;
  }
}

class TrianguloRetangulo extends FormaGeometrica {
  final double catetoA;
  final double catetoB;

  TrianguloRetangulo(String nome, this.catetoA, this.catetoB) : super(nome);

  @override
  double area() {
    return (catetoA * catetoB) / 2;
  }

  @override
  double perimetro() {
    final hipotenusa = math.sqrt(math.pow(catetoA, 2) + math.pow(catetoB, 2));
    return catetoA + catetoB + hipotenusa;
  }
}

class PentagonoRegular extends FormaGeometrica {
  final double lado;

  PentagonoRegular(String nome, this.lado) : super(nome);

  @override
  double area() {
    return (0.25 * math.sqrt(5 * (5 + 2 * math.sqrt(5)))) * math.pow(lado, 2);
  }

  @override
  double perimetro() {
    return 5 * lado;
  }
}

class HexagonoRegular extends FormaGeometrica {
  final double lado;

  HexagonoRegular(String nome, this.lado) : super(nome);

  @override
  double area() {
    return (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;
  }

  @override
  double perimetro() {
    return 6 * lado;
  }
}

class ComparadorFormasGeometricas {
  FormaGeometrica maiorArea(FormaGeometrica forma1, FormaGeometrica forma2) {
    if (forma1.area() > forma2.area()) {
      return forma1;
    } else {
      return forma2;
    }
  }

  FormaGeometrica maiorPerimetro(FormaGeometrica forma1, FormaGeometrica forma2) {
    if (forma1.perimetro() > forma2.perimetro()) {
      return forma1;
    } else {
      return forma2;
    }
  }
}

void main() {
  final comparador = ComparadorFormasGeometricas();

  final circuloA = Circulo('Círculo A', 3);
  final circuloB = Circulo('Círculo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);

  final quadradoA = Quadrado('Quadrado A', 5);
  final quadradoB = Quadrado('Quadrado B', 8);

  final trianguloEquilateroA = TrianguloEquilatero('Triângulo Equilátero A', 4);
  final trianguloEquilateroB = TrianguloEquilatero('Triângulo Equilátero B', 8);

  final trianguloRetanguloA = TrianguloRetangulo('Triângulo Retângulo A', 3, 4);
  final trianguloRetanguloB = TrianguloRetangulo('Triângulo Retângulo B', 6, 8);

  final pentagonoA = PentagonoRegular('Pentágono A', 6);
  final pentagonoB = PentagonoRegular('Pentágono B', 10);

  final hexagonoA = HexagonoRegular('Hexágono A', 5);
  final hexagonoB = HexagonoRegular('Hexágono B', 8);

  final maiorArea = comparador.maiorArea(
    comparador.maiorArea(circuloA, circuloB),
    comparador.maiorArea(quadradoA, quadradoB),
  );

  final maiorPerimetro = comparador.maiorPerimetro(
    comparador.maiorPerimetro(retanguloA, retanguloB),
    comparador.maiorPerimetro(trianguloRetanguloA, trianguloRetanguloB),
  );

  print('Forma de maior área: ${maiorArea.nome}, Área: ${maiorArea.area().toStringAsFixed(2)}');
  print('Forma de maior perímetro: ${maiorPerimetro.nome}, Perímetro: ${maiorPerimetro.perimetro().toStringAsFixed(2)}');
}

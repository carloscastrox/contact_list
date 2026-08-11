import 'dart:math';
import 'dart:io';

class TrianguloRectangulo {
  double catetoA;
  double catetoB;

  TrianguloRectangulo(this.catetoA, this.catetoB);

  double calcularHipotenusa() {
    return sqrt(pow(catetoA, 2) + pow(catetoB, 2));
  }
}

void main() {
  print("Digite el primer cateto:");
  double a = double.parse(stdin.readLineSync()!);

  print("Digite el segundo cateto:");
  double b = double.parse(stdin.readLineSync()!);

  TrianguloRectangulo triangulo = TrianguloRectangulo(a, b);

  print("\n----- RESULTADO -----");
  print("Cateto A: ${triangulo.catetoA}");
  print("Cateto B: ${triangulo.catetoB}");
  print("Hipotenusa: ${triangulo.calcularHipotenusa().toStringAsFixed(2)}");
}
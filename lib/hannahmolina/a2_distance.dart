import 'dart:io';

class MovimientoRectilineoUniforme {
  double velocidad; // Velocidad constante, en m/s
  double tiempo; // Tiempo transcurrido, en segundos

  MovimientoRectilineoUniforme(this.velocidad, this.tiempo);

  /// Calcula la distancia recorrida aplicando la fórmula D = V * T
  double calcularDistancia() {
    return velocidad * tiempo;
  }
}

void main() {
  stdout.write('Ingrese la velocidad del automóvil (m/s): ');
  double velocidadIngresada = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tiempo transcurrido (segundos): ');
  double tiempoIngresado = double.parse(stdin.readLineSync()!);

  MovimientoRectilineoUniforme mru =
      MovimientoRectilineoUniforme(velocidadIngresada, tiempoIngresado);
  double distanciaRecorrida = mru.calcularDistancia();

  print('La distancia recorrida es: $distanciaRecorrida metros');
}
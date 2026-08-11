//1 
import 'dart:io';

class Automovil {
  double velocidad;
  double tiempo;

  Automovil(this.velocidad, this.tiempo);

  double calcularDistancia() {
    return velocidad * tiempo;
  }
}

void main() {
  print("Ingrese la velocidad del automóvil (m/s):");
  double velocidad = double.parse(stdin.readLineSync()!);

  print("Ingrese el tiempo (segundos):");
  double tiempo = double.parse(stdin.readLineSync()!);

  Automovil auto = Automovil(velocidad, tiempo);

  double distancia = auto.calcularDistancia();

  print("La distancia recorrida es: $distancia metros.");
}
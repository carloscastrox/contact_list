//2 
import 'dart:io';

class Empleado {
  String nombre;
  double cantidadHoras;
  double tarifaHora;

  Empleado(this.nombre, this.cantidadHoras, this.tarifaHora);

  double calcularSalario() {
    return cantidadHoras * tarifaHora;
  } 
}

void main() {
  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese la cantidad de horas trabajadas:");
  double cantidadHoras = double.parse(stdin.readLineSync()!);

  print("Ingrese la tarifa por hora:");
  double tarifaHora = double.parse(stdin.readLineSync()!);

  Empleado empleado = Empleado(nombre, cantidadHoras, tarifaHora);

  double salario = empleado.calcularSalario();

  print("El salario de $nombre es: \$${salario.toStringAsFixed(2)}");
}

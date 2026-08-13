import 'dart:io';

void main() {
  // 1. Solicitud y captura de datos de entrada
  stdout.write('Ingrese el nombre del empleado: ');
  String nombreEmpleado = stdin.readLineSync() ?? '';

  stdout.write('Ingrese la cantidad de horas laboradas en el mes: ');
  double horasLaboradas = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la tarifa por hora: ');
  double tarifaHora = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // 2. Cálculo del total devengado
  double totalDevengado = horasLaboradas * tarifaHora;

  // 3. Impresión de resultados
  print('\n==========================================');
  print('         PLANILLA DEL EMPLEADO            ');
  print('==========================================');
  print('Nombre del empleado: $nombreEmpleado');
  print('Cantidad de horas laboradas: $horasLaboradas');
  print('Total devengado: \$${totalDevengado.toStringAsFixed(2)}');
  print('==========================================');
}
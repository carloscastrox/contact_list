import 'dart:io';

void main() {
  // 1. Solicitud y captura de la temperatura en grados Celsius
  stdout.write('Ingrese la temperatura del horno en grados Celsius (°C): ');
  double celsius = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // 2. Aplicación de la fórmula de conversión a Fahrenheit
  double fahrenheit = (celsius * 1.8) + 32;

  // 3. Impresión del resultado
  print('\n==========================================');
  print('    CONVERSIÓN DE TEMPERATURA DEL HORNO   ');
  print('==========================================');
  print('Temperatura en Celsius: $celsius °C');
  print('Temperatura en Fahrenheit: ${fahrenheit.toStringAsFixed(1)} °F');
  print('==========================================');
}
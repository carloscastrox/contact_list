import 'dart:io';
import 'dart:math';

void main() {
  // 1. Solicitud y captura de los catetos (a y b)
  stdout.write('Ingrese la longitud del primer cateto (a): ');
  double a = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write('Ingrese la longitud del segundo cateto (b): ');
  double b = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  // 2. Cálculo de la hipotenusa usando las funciones pow y sqrt
  double hipotenusa = sqrt(pow(a, 2) + pow(b, 2));

  // 3. Impresión del resultado
  print('\n==========================================');
  print('       CÁLCULO DE LA HIPOTENUSA           ');
  print('==========================================');
  print('Cateto a: $a');
  print('Cateto b: $b');
  print('Hipotenusa (H): ${hipotenusa.toStringAsFixed(2)}');
  print('==========================================');
}
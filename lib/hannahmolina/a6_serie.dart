import 'dart:io';

void main() {
  int a = 1;
  int b = 1;

  print('Serie generada:');

  stdout.write('$a '); // Imprime el primer 1

  while (b <= 100) {
    stdout.write('$b '); // Imprime el siguiente término
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }
  
  print(''); // Salto de línea final
}
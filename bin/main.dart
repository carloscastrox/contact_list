import 'dart:io';
import '../lib/contact.dart';
import '../lib/add.dart'; // función creada por el Lider Carlos
import '../lib/management.dart'; // funciones creada por Dev Hannah

void main() {
  List<Contacto> agenda = [];
  bool ejecutando = true;

  while (ejecutando) {
    print('\n--- Agenda de Contactos ---');
    print('1. Agregar Contacto');
    print('2. Ver Contactos');
    print('3. Buscar Contacto');
    print('4. Eliminar Contacto');
    print('5. Salir');
    stdout.write('Elige una opción: ');

    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        // Se llama a la función externa pasando la lista actual
        agregarContacto(agenda);
        break;
      case '2':
        // Aprendiz 2 - Implementar lógica para listar
        break;
      case '3':
        // Aprendiz 3 - Implementar lógica para buscar
        buscarContacto(agenda);
        break;
      case '4':
        // Aprendiz 3 - Implementar lógica para eliminar
        eliminarContacto(agenda);
        break;
      case '5':
        print('Saliendo de la agenda...');
        ejecutando = false;
        break;
      default:
        print('Opción no válida. Intenta de nuevo.');
    }
  }
}
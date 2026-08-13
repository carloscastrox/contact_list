import 'dart:io';

void buscarContacto(List agenda) {
  if (agenda.isEmpty) {
    print('\nNo hay contactos registrados.');
    return;
  }

  stdout.write('\nIngrese el nombre del contacto que desea buscar: ');
  String nombreBuscado = stdin.readLineSync() ?? '';

  bool encontrado = false;

  for (var contacto in agenda) {
    if (contacto.nombre.toLowerCase() == nombreBuscado.toLowerCase()) {
      print('\n--- Contacto encontrado ---');
      print('Nombre: ${contacto.nombre}');
      print('Teléfono: ${contacto.telefono}');
      encontrado = true;
      break;
    }
  }

  if (!encontrado) {
    print('\nNo se encontró ningún contacto con ese nombre.');
  }
}

void eliminarContacto(List agenda) {
  if (agenda.isEmpty) {
    print('\nNo hay contactos registrados.');
    return;
  }

  stdout.write('\nIngrese el nombre del contacto que desea eliminar: ');
  String nombreBuscado = stdin.readLineSync() ?? '';

  for (int i = 0; i < agenda.length; i++) {
    if (agenda[i].nombre.toLowerCase() == nombreBuscado.toLowerCase()) {
      print('\nContacto eliminado: ${agenda[i].nombre}');
      agenda.removeAt(i);
      return;
    }
  }

  print('\nNo se encontró ningún contacto con ese nombre.');
}
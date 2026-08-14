import 'dart:io';

void listarContactos(List agenda) {
  print('\n--- Lista de Contactos ---');

  if (agenda.isEmpty) {
    print('No hay contactos registrados.');
    return;
  }

  for (var i = 0; i < agenda.length; i++) {
    print('${i + 1}. Nombre: ${agenda[i].nombre}');
    print('   Teléfono: ${agenda[i].telefono}');
  }
}
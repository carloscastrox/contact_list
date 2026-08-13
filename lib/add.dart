import 'dart:io';
import 'contact.dart';

void agregarContacto(List<Contacto> agenda) {
  print('\n--- Agregar Nuevo Contacto ---');
  
  stdout.write('Ingresa el nombre: ');
  String? nombre = stdin.readLineSync();

  stdout.write('Ingresa el teléfono: ');
  String? telefono = stdin.readLineSync();

  // Validación básica para evitar contactos vacíos
  if (nombre != null && nombre.trim().isNotEmpty && telefono != null && telefono.trim().isNotEmpty) {
    Contacto nuevoContacto = Contacto(nombre.trim(), telefono.trim());
    agenda.add(nuevoContacto);
    print('✅ ¡Contacto "$nombre" agregado exitosamente!');
  } else {
    print('❌ Error: El nombre y el teléfono no pueden estar vacíos. Intenta de nuevo.');
  }
}
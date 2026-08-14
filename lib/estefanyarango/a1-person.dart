import 'dart:io';



//clase persona 
class Person {
  String Name;
  int Age;

// el contructor de la clase 
  Person({required this.Name, required this.Age});


  //Metodo para evaluar si es mayor de edad 

  bool isAnAdult() {
    return Age >= 18;
  }
  
  //Metodo para mostrar resultados 


  void isAdult() {
    if (isAnAdult()) {
      print(" $Name Eres mayor de edad"); 
    } else {
      print(" $Name Eres menor de edad");
    }
  }
  
}



void main (){

  stdout.writeln('Ingrese su nombre:');
  String? name = stdin.readLineSync ()  ??"Desconocido";

  if (name == null || name.trim().isEmpty) {
    print ("Nombre no valido");
    return;
  }

  stdout.writeln('Ingrese su edad:');
  String? age = stdin.readLineSync()  ??"0";

  if (age == null || age.trim().isEmpty ) {
    print ("Edad no valida");
    return;
  }   


  int ageint = int.tryParse(age) ?? 0;



  Person person = Person(Name: name, Age: ageint);

  //ejecutamos los comportamientos del objeto 

  person.isAdult();


}









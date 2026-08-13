class SerieFibonacci {
  void mostrarSerie() {
    int a = 1;
    int b = 1;

    print("Serie de Fibonacci hasta 100:");
    print(a);
    print(b);

    while (true) {
      int siguiente = a + b;

      if (siguiente > 100) {
        break;
      }

      print(siguiente);

      a = b;
      b = siguiente;
    }
  }
}
 
void main() {
  SerieFibonacci fibonacci = SerieFibonacci();
  fibonacci.mostrarSerie();
}

abstract class Shape {
  void createShape(int i); // Define an abstract method.
}

//concrete subclass of the Shape abstract class
class NewShape implements Shape {
  @override
  void createShape(int i) {
    if (i > 2) {
      print('circle created');
    } else {
      print('line created');
    }
  }
}

void main() {
  var newShape = NewShape();
  newShape.createShape(2);
}

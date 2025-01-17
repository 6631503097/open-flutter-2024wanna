void main(List<String> args) {
  var list = [1, 2, 3, 4];
  final [int a, int b, int c, int d] = list;
  print("Destruction of list.");
  print("Value of a: $a ");
  print("Value of b: $b ");
  print("Value of c: $c ");
  print("Value of d: $d ");

  var map = {"width": 10, "height": 5};
  final {"width": int width, "height": int height} = map;
  print("Destruction of map");
  print("Value of width : $width");
  print("Value of height : $height");

  var recordWithoutVarName = (1, 2);
  final (int first, int last) = recordWithoutVarName;
  print("Destruction of record without variable name");
  print("Value of first : $first");
  print("Value of last: $last");

  var recordWithVarName = (x: 1, y: 2);
  final (x: int x, y: int y) = recordWithVarName;
  print("Destruction of record with names");
  print("Value of x: $x");
  print("Value of y: $y");

  var person = Person("Aung Aung", 20);
  final Person(name: String name, age: int age) = person;
  print("Destruction of object");
  print("Value of name: $name");
  print("Value of age: $age");
}

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

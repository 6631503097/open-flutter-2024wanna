class Person {
  final int id;
  final String name;

  const Person({required this.id, required this.name});

  @override
  String toString() {
    return "Person(id: $id, name: $name)";
  }
}

Person? getPerson(dynamic input) {
  if (input case [int id, String name]) return Person(id: id, name: name);
  if (input case (int id, String name)) return Person(id: id, name: name);
  if (input case (id: int id, name: String name)) {
    return Person(id: id, name: name);
  }
  return null;
}

Person? getPersonWithOperators(dynamic input) {
  if (input
      case [int id, String name] ||
          (int id, String name) ||
          (id: int id, name: String name)) {
    return Person(id: id, name: name);
  }
  return null;
}

Person? getPersonWithSwitch(dynamic input) {
  return switch (input) {
    [int id, String name] => Person(id: id, name: name),
    (int id, String name) => Person(id: id, name: name),
    (id: int id, name: String name) => Person(id: id, name: name),
    _ => null
  };
}

Person? getPersonWithSwitchOperator(dynamic input) {
  return switch (input) {
    [int id, String name] ||
    (int id, String name) ||
    (id: int id, name: String name) =>
      Person(id: id, name: name),
    _ => null
  };
}

void main(List<String> args) {
  show(input: [1, "Aung Aung"], title: "get Person with List pattern");
  show(input: (1, "Aung Aung"), title: "get Person with Record pattern");
  show(
      input: (id: 1, name: "Aung Aung"),
      title: "get Person with record pattern with varible name");
  show(input: (1, "Aung Aung", 12), title: "get Person with Wrong one");
}

void show({dynamic input, String title = "Testing Pattern"}) {
  print(title);
  var person = getPerson(input);
  print(person);
}

typedef Student = ({int id, String name, int age});

const students = <Student>[
  (id: 1, name: "Aung Aung", age: 20),
  (id: 2, name: "Thidar", age: 21),
  (id: 3, name: "Nilar", age: 22),
  (id: 4, name: "Ko Ko", age: 23),
];
const mixList = [
  1,
  2,
  (id: 1, name: "Aung Aung", age: 20),
  (id: 2, name: "Thidar", age: 21),
  (id: 3, name: "Nilar", age: 22),
  (id: 4, name: "Ko Ko", age: 23),
  "Hello"
];

void main(List<String> args) {
  for (final (:id, :name, :age) in students) {
    print("ID : $id, Name : $name, Age : $age");
  }

  for (final element in mixList) {
    if (element case (int id, String name, int age)) {
      print("ID : $id, Name : $name, Age : $age");
    } else {
      print(element);
    }
  }
  final list = [1, 2, 3];
  switchDemo(list);
  switchDemo([2, 3, 4]);
  switchDemo([2, 3, 4, 5]);
}

void switchDemo(list) {
  switch (list) {
    case [int a, int b, int c]:
      print("list : $a,$b,$c");

    default:
      print("other list");
  }
}

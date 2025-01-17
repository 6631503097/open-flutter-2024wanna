const list = [1, 2, 3, 4, 5];
void main() {
  for (int input in list) {
    take(input, (n) => n * 3);
  }
}

typedef intFunction = int Function(int);
void take(int input, intFunction) {
  var result = intFunction(input);
  print(result);
}

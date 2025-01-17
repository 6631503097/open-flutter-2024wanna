String getMessage(List<int> list) => switch (list) {
      [] => "empty list",
      [int first] when first == 0 => "Zero list.",
      [int first] when first < 10 => "Less than ten list.",
      [int first] => "List with $first value",
      _ => "others"
    };

void main(List<String> args) {
  print(getMessage([0]));
  print(getMessage([1]));
  print(getMessage([]));
  print(getMessage([11]));
}

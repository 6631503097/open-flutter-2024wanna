import 'package:http/http.dart' as http;
import 'package:characters/characters.dart';

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  // Example of characters usage
  var string = 'Hello 👋';
  print('Character count: ${string.characters.length}');
}

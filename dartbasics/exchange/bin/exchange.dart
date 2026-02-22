import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  final response = await http.get(
    Uri.parse(
      'https://api.exchangerate.host/list?access_key=5e39fbfe2dbcb93fbb87a143a7eee73f',
    ),
  );
  print(response.body);
}

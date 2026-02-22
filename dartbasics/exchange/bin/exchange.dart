import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  final response = await http.get(
    Uri.parse(
      'https://api.exchangerate.host/convert?from=EUR&to=GBP&amount=100&access_key=5e39fbfe2dbcb93fbb87a143a7eee73f',
    ),
  );
  final stringBody = response.body;
  final data = JsonDecoder().convert(stringBody) as Map<String, dynamic>;
  print(data['result']);
}

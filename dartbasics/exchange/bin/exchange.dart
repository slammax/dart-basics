import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main(List<String> arguments) async {
  if (arguments.length != 3) {
    print('Нверный формат вызова');
    return;
  }

  final fromCurrency = arguments[0];
  final toCurrency = arguments[1];
  final stringAmount = arguments[2];
  if (double.tryParse(stringAmount) == null) {
    print('Последним аргументом должно быть число');
    return;
  }
  final amount = double.parse(stringAmount);

  print('Начинаем подсчет обмена $fromCurrency $amount -> $toCurrency.');

  final response = await http.get(
    Uri(
      scheme: 'https',
      host: 'api.exchangerate.host',
      path: 'convert',
      queryParameters: {
        'from': fromCurrency,
        'to': toCurrency,
        'amount': amount.toString(),
        'access_key': '5e39fbfe2dbcb93fbb87a143a7eee73f',
      },
    ),
  );

  final stringBody = response.body;
  final data = JsonDecoder().convert(stringBody) as Map<String, dynamic>;
  print(data['result']);
}

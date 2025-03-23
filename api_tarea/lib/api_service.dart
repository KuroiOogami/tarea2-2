import 'dart:convert';

import 'package:http/http.dart' as http;

import 'character.dart';

Future<List<Character>> fetchCharacters({int page = 1, int limit = 10}) async {
  try {
    final response = await http
        .get(
          Uri.parse(
              'https://dragonball-api.com/api/characters?page=$page&limit=$limit'),
        )
        .timeout(Duration(seconds: 10));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);

      // Extrae la lista de personajes del campo 'items'
      final List<dynamic> items = data['items'];

      // Convierte cada elemento de la lista en un objeto Character
      return items.map((json) => Character.fromJson(json)).toList();
    } else {
      throw Exception(
          'Failed to load characters: Status code ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to load characters: $e');
  }
}

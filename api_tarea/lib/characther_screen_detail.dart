import 'package:api_tarea/character.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  CharacterDetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del personaje
            Image.network(
              character.image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),

            Text('Race: ${character.race}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Gender: ${character.gender}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Affiliation: ${character.affiliation}',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Description:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(character.description, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

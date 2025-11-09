import 'package:flutter/material.dart';

class AlbumReviewScreen extends StatelessWidget {
  final String albumId;

  const AlbumReviewScreen({super.key, required this.albumId});

  @override
  Widget build(BuildContext context) {
    // Ejemplo de búsqueda con el id. Reemplaza con tu lógica real.
    final album = {
      '1': {
        'title': 'A New Start',
        'artist': 'Rels B',
        'image': 'assets/images/newstart.jpg',
        'desc': 'Un álbum inspirador y motivador.',
      },
      '2': {
        'title': 'Paz Mental',
        'artist': 'Eladio Carrion',
        'image': 'assets/images/paz_mental.jpg',
        'desc': 'Un viaje introspectivo a la tranquilidad.',
      },
      '3': {
        'title': 'DbTmF',
        'artist': 'Bad Bunny',
        'image': 'assets/images/dtmf.jpg',
        'desc': 'El sonido urbano del momento.',
      }
    }[albumId] ??
        {
          'title': 'Desconocido',
          'artist': 'Desconocido',
          'image': 'assets/images/logo.jpeg',
          'desc': 'No hay información de este álbum.'
        };

    return Scaffold(
      appBar: AppBar(
        title: Text(album['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(album['image']!, width: 200, height: 200),
            const SizedBox(height: 16),
            Text(album['artist']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(album['desc']!),
          ],
        ),
      ),
    );
  }
}

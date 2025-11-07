import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Usar las nuevas imágenes que están en assets/images/
    // (dtmf.jpg, logo.jpeg, newstart.jpg, por_si_alguien_nos_escucha.jpg, unico.jpg, welcome.jpeg)
    final novedades = [
      {
        'image': 'assets/images/newstart.jpg',
        'title': 'A New Start',
        'artist': 'Rels B'
      },
      {
        'image': 'assets/images/paz_mental.jpg',
        'title': 'paz mental',
        'artist': 'Eladio Carrion'
      },
      {
        'image': 'assets/images/dtmf.jpg',
        'title': 'DbTmF',
        'artist': 'Bad Bunny'
      },
    ];

    final nuevoEntreAmigos = [
      {
        'image': 'assets/images/por_si_alguien_nos_escucha.jpg',
        'title': 'Por Si Alguien Nos Escucha',
        'artist': 'Artista'
      },
      {
        'image': 'assets/images/unico.jpg',
        'title': 'Único',
        'artist': 'Artista'
      },
      {
        'image': 'assets/images/flores_en_anonimo.jpg',
        'title': 'Flores en Anónimo',
        'artist': 'Artista'
      },
    ];

    final popularAmigos = [
      {
        'image': 'assets/images/dtmf.jpg',
        'title': 'Popular 1',
        'artist': ''
      },
      {
        'image': 'assets/images/newstart.jpg',
        'title': 'Popular 2',
        'artist': ''
      },
      {
        'image': 'assets/images/paz_mental.jpg',
        'title': 'Popular 3',
        'artist': ''
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          // Barra superior usuario y acciones
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
                radius: 21,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Bienvenido de vuelta',
                        style: TextStyle(
                            fontSize: 14, color: Colors.black54)),
                    Text('Juan',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black)),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.black87),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.settings, color: Colors.black87),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Buscador visual
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Busca entre más 5 millones de álbumes",
                  hintStyle: TextStyle(fontSize: 14),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12)),
            ),
          ),
          const SizedBox(height: 22),

          // Novedades
          const Text('Novedades',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: novedades
                .map(
                  (item) => AlbumCardMini(
                    image: item['image']!,
                    title: item['title']!,
                    artist: item['artist']!,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),

          // Nuevo entre amigos
          const Text('Nuevo entre amigos',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: nuevoEntreAmigos
                .map(
                  (item) => AlbumCardMini(
                    image: item['image']!,
                    title: item['title']!,
                    artist: item['artist']!,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),

          // Popular entre amigos
          const Text('Popular entre amigos',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: popularAmigos
                .map(
                  (item) => AlbumCardMini(
                    image: item['image']!,
                    title: item['title']!,
                    artist: item['artist']!,
                  ),
                )
                .toList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF4FBFD),
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Agregar'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Perfil'),
        ],
      ),
    );
  }
}

class AlbumCardMini extends StatelessWidget {
  final String image, title, artist;
  const AlbumCardMini(
      {super.key,
      required this.image,
      required this.title,
      required this.artist});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      margin: const EdgeInsets.only(right: 12, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, letterSpacing: 0),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            artist,
            style: const TextStyle(
                color: Colors.black54, fontSize: 11, letterSpacing: 0),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

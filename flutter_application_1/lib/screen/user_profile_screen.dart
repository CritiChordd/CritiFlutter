import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Color bg = Colors.white;
    final Color surface = const Color(0xFFEAEFF3); // fondo área perfil/card
    final Color accent = const Color(0xFF15A5C5); // celeste para botones/score bueno

    // Datos quemados de ejemplo
    final albums = [
      {
        "title": "DTMF",
        "artist": "Bad Bunny",
        "image": "assets/images/dtmf.jpg",
      },
      {
        "title": "Paz Mental",
        "artist": "Eladio Carrion",
        "image": "assets/images/paz_mental.jpg",
      },
      {
        "title": "Flores en Anónimo",
        "artist": "Eladio Carrion",
        "image": "assets/images/flores_en_anonimo.jpg",
      },
    ];

    final reviews = [
      {
        "album": "New Start",
        "artist": "Rels B",
        "score": "85%",
        "scoreColor": Colors.green[600],
        "image": "assets/images/newstart.jpg",
      },
      {
        "album": "Flores en Anónimo",
        "artist": "Eladio Carrion",
        "score": "100%",
        "scoreColor": Colors.green[700],
        "image": "assets/images/flores_en_anonimo.jpg",
      },
      {
        "album": "unico",
        "artist": "kaleth morales",
        "score": "10%",
        "scoreColor": Colors.red[600],
        "image": "assets/images/unico.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: bg,
        elevation: 0,
        title: const SizedBox(),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        children: [
          // Perfil usuario
          Container(
            decoration: BoxDecoration(
              color: surface,
              borderRadius: BorderRadius.circular(25),
            ),
            margin: const EdgeInsets.only(top: 8, bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundImage: const AssetImage("assets/images/avatar.jpg"),
                ),
                const SizedBox(height: 8),
                const Text(
                  "el.xokas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  "17 seguidores • 78 siguiendo",
                  style: TextStyle(color: Colors.black87, fontSize: 13),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: accent,
                    shape: const StadiumBorder(),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                  ),
                  child: const Text(
                    "Seguir",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          // Álbumes favoritos
          const SizedBox(height: 8),
          const Text(
            "Albums favoritos",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: albums
                  .map((album) => Container(
                        width: 92,
                        margin: const EdgeInsets.only(right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  album["image"] as String,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              album["title"] as String,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.black),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              album["artist"] as String,
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 11,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(height: 18),
          // Reseñas
          const Text(
            "Reseñas",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 10),
          ...reviews.map((review) => Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          review["image"] as String,
                          height: 54,
                          width: 54,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            review["album"] as String,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          Text(
                            review["artist"] as String,
                            style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: review["scoreColor"] as Color? ?? Colors.grey,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        review["score"] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: accent,
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      child: const Text("Ver reseña"),
                    ),
                  ],
                ),
              )),
          // Botón principal
          const SizedBox(height: 18),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: accent,
                  foregroundColor: Colors.white,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              child: const Text(
                "Ver reseñas y playlists",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

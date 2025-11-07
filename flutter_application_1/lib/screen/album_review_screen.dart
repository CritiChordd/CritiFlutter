import 'package:flutter/material.dart';

class AlbumReviewScreen extends StatelessWidget {
  const AlbumReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Colores personalizados
    const barBg = Color(0xFFEDF7FA); // fondo barra inferior/nav
    const highlight = Color(0xFF16D2E7); // celeste para botones

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: barBg,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: const Text(
          'Reseñas',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 10),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/newstart.jpg', // pon tu imagen local aquí
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'a new star (1993)\nmodificar', // título grande
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 6),
          Text(
            'Rels B',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          Text(
            '2024',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 18),
          Center(
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/newstart.jpg'), // imagen tipo perfil
            ),
          ),
          const SizedBox(height: 18),
          Center(
            child: Column(
              children: [
                Text('Puntaje Global',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                Text('De 927 usuarios',
                    style: TextStyle(fontSize: 13, color: Colors.grey[600])),
                const SizedBox(height: 6),
                Container(
                  width: 48,
                  height: 35,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    '73',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Text(
                'Reseñas: (146)',
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text('Ver todos', style: TextStyle(color: highlight)),
              )
            ],
          ),
          // Aquí puedes agregar cards de reseña
          Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text(
                  'Excelente álbum, recomendado para escuchar en cualquier momento.'),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Text('Melodías y letras que llegan al corazón.'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: barBg,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Agregar'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
        ],
      ),
    );
  }
}

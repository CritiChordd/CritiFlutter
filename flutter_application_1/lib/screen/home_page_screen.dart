import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ejemplo de datos
    final novedades = [
      {'id': '1', 'img': 'assets/images/newstart.jpg', 'titulo': 'A New Start', 'autor': 'Rels B'},
      {'id': '2', 'img': 'assets/images/paz_mental.jpg', 'titulo': 'Paz Mental', 'autor': 'Eladio Carrion'},
      {'id': '3', 'img': 'assets/images/dtmf.jpg', 'titulo': 'DbTmF', 'autor': 'Bad Bunny'},
      {'id': '4', 'img': 'assets/images/unico.jpg', 'titulo': 'Único', 'autor': 'Artista'},
    ];
    final nuevos = [
      {'id': '5', 'img': 'assets/images/por_si_alguien_nos_escucha.jpg', 'titulo': 'Alguien nos esc.', 'autor': 'Artista'},
      {'id': '6', 'img': 'assets/images/unico.jpg', 'titulo': 'Único', 'autor': 'Artista'},
    ];
    final popular = [
      {'id': '7', 'img': 'assets/images/flores_en_anonimo.jpg', 'titulo': 'Flores en Anónimo', 'autor': 'Artista'},
      {'id': '8', 'img': 'assets/images/logo.jpeg', 'titulo': 'Otro', 'autor': 'Artista'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('assets/images/logo.jpeg'), radius: 21, backgroundColor: Colors.grey),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Bienvenido de vuelta', style: TextStyle(fontSize: 13, color: Colors.black54)),
                Text('Usuario', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            ),
          ],
        ),
        actions: [Icon(Icons.notifications_none, color: Colors.black)],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.black45),
                border: InputBorder.none,
                hintText: "Busca entre álbumes...",
                hintStyle: TextStyle(color: Colors.black45, fontSize: 15),
                contentPadding: EdgeInsets.all(14),
              ),
            ),
          ),
          const SizedBox(height: 20),
          heading('Novedades', Colors.black),
          albumsRow(context, novedades, Colors.white),
          heading('Nuevo entre amigos', Colors.black),
          albumsRow(context, nuevos, Colors.white),
          heading('Popular entre amigos', Colors.black),
          albumsRow(context, popular, Colors.white),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Color(0xFF00CFFF),
        unselectedItemColor: Colors.black38,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Biblioteca'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Perfil'),
        ],
        onTap: (i) {
          if (i == 2) context.push('/profile');
        },
      ),
    );
  }

  Widget heading(String label, Color color) => Padding(
    padding: const EdgeInsets.only(bottom: 8, top: 18),
    child: Text(label, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: color)),
  );

  Widget albumsRow(BuildContext context, List<Map<String, String>> albumes, Color textColor) => SizedBox(
    height: 160,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: albumes.length,
      separatorBuilder: (c, i) => const SizedBox(width: 16),
      itemBuilder: (context, i) {
        var a = albumes[i];
        return GestureDetector(
          onTap: () => context.push('/album/${a['id']}'),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(a['img']!, width: 100, height: 100, fit: BoxFit.cover),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 100,
                child: Text(a['titulo']!,
                  style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(a['autor']!, style: TextStyle(color: Colors.black54, fontSize: 12), overflow: TextOverflow.ellipsis),
            ],
          ),
        );
      },
    ),
  );
}

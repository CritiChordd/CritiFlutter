import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String avatar = 'assets/images/logo.jpeg';
    final List<Map<String, String>> favoritos = [
      {'title': "YHLQMDLG", 'image': "assets/images/dtmf.jpg"},
      {'title': "Views", 'image': "assets/images/newstart.jpg"},
    ];
    final List<Map<String, dynamic>> resenas = [
      {'album': "New Start", 'score': 85, 'image': "assets/images/newstart.jpg"},
      {'album': "Flores en Anónimo", 'score': 100, 'image': "assets/images/flores_en_anonimo.jpg"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text("eLxokas", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(icon: Icon(Icons.edit, color: Color(0xFF00CFFF)), onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(avatar),
              radius: 50,
              backgroundColor: Color(0xFFEAEFF3),
            ),
            const SizedBox(height: 12),
            Center(child: Text("123 seguidores · 98 siguiendo", style: TextStyle(color: Colors.black54))),
            const SizedBox(height: 22),
            Text("Tus álbumes favoritos", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SizedBox(
              height: 82,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: favoritos.map((fav) => Container(
                  margin: const EdgeInsets.only(right: 14),
                  width: 72, height: 72,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(fav['image']!, fit: BoxFit.cover),
                  ),
                )).toList(),
              ),
            ),
            const SizedBox(height: 20),
            Text("Tus reseñas", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...resenas.map((r) => Card(
              child: ListTile(
                leading: Image.asset(r['image'] as String, width: 42, height: 42, fit: BoxFit.cover),
                title: Text(r['album'] as String),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: (r['score'] as int) >= 85 ? Colors.green[300] : Colors.red[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("${r['score']}%", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            )),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 14)),
              child: Text('Ver canciones y playlists', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

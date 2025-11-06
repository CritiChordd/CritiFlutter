import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: const Color(0xFFF4FBFD), // fondo de la barra inferior
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo.png',  // Coloca tu logo aquí, tamaño: 32x32 px aprox
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 8),
            const Text(
              'CritiChord',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Imagen principal
          Column(
            children: [
              Image.asset(
                'assets/welcome.png', // Tu imagen de portada
                width: double.infinity,
                height: 275,
                fit: BoxFit.cover,
              ),
              Expanded(child: Container(color: Colors.transparent)), // para el Stack
            ],
          ),
          // Card inferior recortado
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 52), // para despejar barra nav
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Lleva registro de tus canciones y álbumes favoritos',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Guarda aquellos que quieras escuchar\nY dile al mundo qué piensas de ellos',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.54),
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 36,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF16D2E7),
                          foregroundColor: Colors.white,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          'Comenzar ahora!',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // Barra de navegación inferior fija
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
          BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Biblioteca'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Agregar'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Perfil'),
        ],
      ),
    );
  }
}

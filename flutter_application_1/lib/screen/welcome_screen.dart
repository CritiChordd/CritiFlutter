import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 56),
          Image.asset(
            'assets/images/welcome.jpeg',
            width: double.infinity,
            height: 330,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 2)),
              ],
            ),
            child: Column(
              children: [
                const Text(
                  'Lleva registro de tus canciones y álbumes favoritos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Guarda aquellos que quieras escuchar\nY dile al mundo qué piensas de ellos',
                  style: TextStyle(fontSize: 15, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00CFFF),
                    shape: StadiumBorder(),
                    minimumSize: Size(double.infinity, 46),
                  ),
                  onPressed: () => context.push('/login'),
                  child: const Text("Comenzar ahora!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

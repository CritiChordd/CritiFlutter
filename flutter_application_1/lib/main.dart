import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/welcome_screen.dart';
// Importa la pantalla Welcome (ajusta la ruta si tu carpeta es diferente)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Opcional, para ocultar el banner de debug
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WelcomeScreen(),

    );
  }
}

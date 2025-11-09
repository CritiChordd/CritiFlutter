import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        children: [
          const SizedBox(height: 56),
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => context.pop(),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 8),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
              radius: 42,
              backgroundColor: Colors.grey[100],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Registrate',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              labelText: "Nombre de usuario",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Nombre",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Genero",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Edad",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Checkbox(value: false, onChanged: (_) {}),
              Expanded(
                child: Text(
                  'He leído y acepto los términos y condiciones',
                  style: TextStyle(fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00CFFF),
              minimumSize: Size(double.infinity, 46),
              shape: StadiumBorder(),
            ),
            onPressed: () => context.push('/home'),
            child: const Text('Regístrate', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('¿Ya tienes una cuenta?'),
              TextButton(
                  onPressed: () => context.push('/login'),
                  child: Text('Inicia sesión', style: TextStyle(color: Color(0xFF00CFFF)))),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/login/login_bloc.dart';
import '../bloc/login/login_event.dart';
import '../bloc/login/login_state.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        children: [
          const SizedBox(height: 54),
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => context.pop(),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 8),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
              radius: 54,
              backgroundColor: Colors.grey[100],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Accede a tu cuenta',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 32),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Contraseña",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value: false, onChanged: (_) {}),
              const Text('Recordarme'),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00CFFF),
              minimumSize: Size(double.infinity, 46),
              shape: StadiumBorder(),
            ),
            onPressed: () => context.push('/home'),
            child: const Text('Ingresar', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          TextButton(
            onPressed: () {},
            child: Text('¿Olvidaste tu contraseña?', style: TextStyle(color: Color(0xFF00CFFF))),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          Center(child: Text('Continuar con')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.g_mobiledata, size: 35), onPressed: () {}, tooltip: 'Google'),
              IconButton(icon: Icon(Icons.facebook, size: 32), onPressed: () {}, tooltip: 'Facebook'),
              IconButton(icon: Icon(Icons.apple, size: 28), onPressed: () {}, tooltip: 'Apple'),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('¿No tienes una cuenta?'),
              TextButton(
                onPressed: () => context.push('/register'),
                child: Text('Regístrate', style: TextStyle(color: Color(0xFF00CFFF))),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

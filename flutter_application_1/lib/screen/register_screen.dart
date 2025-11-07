import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
const RegisterScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor:Colors.black38,
body:Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Spacer(),
Image(image: AssetImage('assets/images/logo.jpeg'),
width: 100,
height: 100,
),
Text( 'Registrate',
style: TextStyle(
color: const Color.fromRGBO(255, 255, 255, 1),
fontSize: 24,
fontWeight: FontWeight.bold)
),
Padding(
padding: const EdgeInsets.symmetric(vertical: 16),
child: Center(
child: SizedBox(
width: 340,
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
TextField(
style: const TextStyle(fontSize: 14, color: Colors.white),
decoration: buildINputDecoration(hintText: 'Nombre de usuario'),
),
const SizedBox(height: 10),
TextField(
style: const TextStyle(fontSize: 14, color: Colors.white),
decoration: buildINputDecoration(hintText: 'Nombre'),
),
const SizedBox(height: 10),
TextField(
style: const TextStyle(fontSize: 14, color: Colors.white),
keyboardType: TextInputType.number,
decoration: buildINputDecoration(hintText: 'Edad'),
),
const SizedBox(height: 10),
TextField(
style: const TextStyle(fontSize: 14, color: Colors.white),
keyboardType: TextInputType.emailAddress,
decoration: buildINputDecoration(hintText: 'Correo'),
),
const SizedBox(height: 10),
TextField(
style: const TextStyle(fontSize: 14, color: Colors.white),
obscureText: true,
decoration: buildINputDecoration(hintText: 'Contraseña'),
),
],
),
),
),
),

Spacer(),
Padding(
padding: const EdgeInsets.all(8.0),
child: Text( 'He leido y acepto los terminos y condiciones',
style: TextStyle(
color: Colors.white,
fontSize: 16,
),
),
),
BotonRegister(),
Padding(
padding: const EdgeInsets.all(8.0),
child: Text( '¿Ya tienes una cuenta? Inicia sesión',
style: TextStyle(
color: Colors.white,
fontSize: 16,
),
),
),
Spacer(),
],
),
)
);
}
}
class BotonRegister extends StatelessWidget {
const BotonRegister({super.key});

@override
Widget build(BuildContext context) {
return OutlinedButton(
style: OutlinedButton.styleFrom(
backgroundColor: const Color(0xFF099FB5),
side: BorderSide(color: Colors.white),
padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(30),
),
),
onPressed: () {}, child: Text('Registrate',
style:
TextStyle(
color: Colors.white
),
));
}
}

InputDecoration buildINputDecoration({required String hintText}) {
return InputDecoration(
filled: true,
fillColor: const Color(0xFF1E1E1E),
hintText: hintText,
hintStyle: TextStyle(color: Colors.white54,
fontSize: 14),
labelStyle: TextStyle(color: Colors.white,
fontSize: 16,
fontWeight: FontWeight.bold,
),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(color: Colors.white),

),
);
}
import 'package:flutter/material.dart';
import '../widgets/mi_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bienvenido a Kinsui"), backgroundColor: Colors.orange),
      drawer: const MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Kinsui Express", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Image.network('https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/KINSUI-EXPRESS.jpg', width: 200, height: 200),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("El mejor sushi de la ciudad a un clic de distancia.", textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
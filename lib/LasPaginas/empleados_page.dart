import 'package:flutter/material.dart';
import '../widgets/mi_drawer.dart';

class EmpleadosPage extends StatelessWidget {
  const EmpleadosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuestro Staff")),
      drawer: const MiDrawer(),
      body: Center(
        child: Image.network('https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/cafe2.jpg', width: 200, height: 200),
      ),
    );
  }
}
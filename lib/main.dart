import 'package:flutter/material.dart';
import 'LasPaginas/home_page.dart';
import 'LasPaginas/productos_page.dart';
import 'LasPaginas/empleados_page.dart';
import 'LasPaginas/usuarios_page.dart';
import 'LasPaginas/contacto_page.dart';

void main() => runApp(const KinsuiApp());

class KinsuiApp extends StatelessWidget {
  const KinsuiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kinsui Express',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 255, 255, 255)),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/productos': (context) => const ProductosPage(),
        '/empleados': (context) => const EmpleadosPage(),
        '/usuarios': (context) => const UsuariosPage(),
        '/contacto': (context) => const ContactoPage(),
      },
    );
  }
}
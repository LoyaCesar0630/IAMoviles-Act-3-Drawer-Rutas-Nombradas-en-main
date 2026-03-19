import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF212121)),
            accountName: Text("Kinsui Express", 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orangeAccent)),
            accountEmail: Text("contacto@kinsui.com\nAv. Sakura #456\nTel: 656-123-4567"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/LoyaCesar0630/Imagenes-para-flutter-6TO-I-11-FEB-2026/refs/heads/main/KINSUI-EXPRESS.jpg'),
            ),
          ),
          _crearItem(context, Icons.home, "Inicio", '/'),
          _crearItem(context, Icons.restaurant_menu, "Productos", '/productos'),
          _crearItem(context, Icons.badge, "Empleados", '/empleados'),
          _crearItem(context, Icons.group, "Usuarios", '/usuarios'),
          _crearItem(context, Icons.contact_mail, "Contacto", '/contacto'),
        ],
      ),
    );
  }

  Widget _crearItem(BuildContext context, IconData icono, String texto, String ruta) {
    return ListTile(
      leading: Icon(icono, color: Colors.orange[800]),
      title: Text(texto),
      onTap: () => Navigator.pushReplacementNamed(context, ruta),
    );
  }
}
import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class ServiciosScreen extends StatefulWidget {
  const ServiciosScreen({super.key});

  @override
  State<ServiciosScreen> createState() => _ServiciosScreenState();
}

class _ServiciosScreenState extends State<ServiciosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios'),
      ),
      drawer: SideMenu(),
      body: Center(),
    );
  }
}

import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class HotelesScreen extends StatefulWidget {
  const HotelesScreen({super.key});

  @override
  State<HotelesScreen> createState() => _HotelesScreenState();
}

class _HotelesScreenState extends State<HotelesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoteles'),
      ),
      drawer: SideMenu(),
      body: Center(),
    );
  }
}

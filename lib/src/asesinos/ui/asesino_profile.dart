import 'package:certamen_uno_dam/provider/user_provider.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AsesinoProfile extends StatefulWidget {
  const AsesinoProfile({super.key});

  @override
  State<AsesinoProfile> createState() => _AsesinoProfileState();
}

class _AsesinoProfileState extends State<AsesinoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('asesino profile'),
      ),
      drawer: SideMenu(),
      body: ElevatedButton(
        onPressed: () {
          context.read<UserProvider>().changeLogin(newState: false);
        },
        child: Text('deslogin'),
      ),
    );
  }
}

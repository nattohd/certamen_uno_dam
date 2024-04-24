import 'package:certamen_uno_dam/provider/user_provider.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/asesino_profile.dart';
import 'package:certamen_uno_dam/src/contratos/ui/contratos_screen.dart';
import 'package:certamen_uno_dam/src/user/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogged = context.watch<UserProvider>().isLogged;
    return isLogged == false ? LoginScreen() : AsesinoProfile();
  }
}

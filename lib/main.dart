import 'package:certamen_uno_dam/config/router/app_router.dart';
import 'package:certamen_uno_dam/config/theme/app_theme.dart';
import 'package:certamen_uno_dam/provider/user_provider.dart';
import 'package:certamen_uno_dam/src/user/base_page.dart';
import 'package:certamen_uno_dam/src/user/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
          title: 'John Wick Wiki',
          theme: AppTheme().getTheme()

          //USAR PROVIDER PARA ESTADO DE LOGIN, BASEPAGE PARA VER SI ESTÁ LOGIN O NO
          ),
    );
  }
}

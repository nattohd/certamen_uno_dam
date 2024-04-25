import 'package:certamen_uno_dam/src/asesinos/ui/asesino_profile.dart';
import 'package:certamen_uno_dam/src/asesinos/ui/asesinos_screen.dart';
import 'package:certamen_uno_dam/src/contratos/ui/contratos_screen.dart';
import 'package:certamen_uno_dam/src/hoteles/ui/hoteles_screen.dart';
import 'package:certamen_uno_dam/src/servicios/ui/servicios_screen.dart';
import 'package:certamen_uno_dam/src/user/base_page.dart';
import 'package:certamen_uno_dam/src/user/login_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => BasePage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => AsesinoProfile(),
  ),
  GoRoute(
    path: '/contratos',
    builder: (context, state) => ContratosScreen(),
  ),
  GoRoute(
    path: '/hoteles',
    builder: (context, state) => HotelesScreen(),
  ),
  GoRoute(
    path: '/servicios',
    builder: (context, state) => ServiciosScreen(),
  ),
  GoRoute(
    path: '/asesinos',
    builder: (context, state) => AsesinosScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
]);

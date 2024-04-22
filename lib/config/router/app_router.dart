import 'package:certamen_uno_dam/src/asesinos/ui/asesino_profile.dart';
import 'package:certamen_uno_dam/src/contratos/ui/contratos_screen.dart';
import 'package:certamen_uno_dam/src/user/base_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const BasePage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => AsesinoProfile(),
  ),
  GoRoute(
    path: '/contratos',
    builder: (context, state) => ContratosScreen(),
  ),
]);

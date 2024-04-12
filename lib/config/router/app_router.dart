import 'package:certamen_uno_dam/src/user/base_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const BasePage(),
  ),
]);

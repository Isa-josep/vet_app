import 'package:go_router/go_router.dart';
import 'package:vetapp/features/presentation/screens.dart';


final appRouter =GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const InitialScreen(),
    ),
    
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
  ]
);
import 'package:go_router/go_router.dart';
import 'package:vetapp/features/presentation/screens.dart';
import 'package:vetapp/features/presentation/screens/profilepet.dart';
import 'package:vetapp/features/presentation/screens/profileveterinario.dart';
import 'package:vetapp/features/presentation/screens/veterinario-page.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const InitialScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/veterhome',
    builder: (context, state) => const VeterinarioPage(),
  ),
  GoRoute(
    path: '/petprofile',
    builder: (context, state) => const ProfilePet(),
  ),
  GoRoute(
    path: '/veter/:id',
    name: VeterinarianProfile.name,
    builder: (context, state) {
      final index = int.parse(state.pathParameters['id'] ?? '0');
      return VeterinarianProfile(
        pagina: index,
      );
    },
  )
]);

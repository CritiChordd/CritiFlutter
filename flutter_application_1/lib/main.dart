import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screen/album_review_screen.dart';
import 'screen/home_page_screen.dart';
import 'screen/login_screen.dart';
import 'screen/register_screen.dart';
import 'screen/user_profile_screen.dart';
import 'screen/welcome_screen.dart';
import 'routes.dart';

final _router = GoRouter(
  initialLocation: AppRoutes.welcome,
  routes: [
    GoRoute(
      path: AppRoutes.welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePageScreen(),
    ),
    GoRoute(
      path: AppRoutes.album,
      name: AppRoutes.albumName,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return AlbumReviewScreen(albumId: id); // Adapta el constructor si es diferente
      },
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, state) => const UserProfileScreen(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

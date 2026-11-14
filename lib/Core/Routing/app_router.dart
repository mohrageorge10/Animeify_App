import 'package:animeify/Core/Routing/app_routes.dart';
import 'package:animeify/Core/Presentation/start_page.dart';
import 'package:animeify/Core/Presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.start:
        return MaterialPageRoute(builder: (context) => const StartPage());
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:goldpulse/core/presentation/home_screen.dart';
import 'package:goldpulse/core/routing/app_routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("This screen not exit ${settings.name}"),
              ),
            );
          },
        );
    }
  }
}

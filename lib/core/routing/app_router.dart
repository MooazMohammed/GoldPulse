import 'package:flutter/material.dart';
import 'package:goldpulse/core/presentation/home_screen.dart';
import 'package:goldpulse/core/routing/app_routes.dart';
import 'package:goldpulse/features/gold/presentation/screens/gold_screen.dart';
import 'package:goldpulse/features/sliver/presentation/screens/sliver_screen.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        );

      case AppRoutes.goldScreen:
        return MaterialPageRoute(
          builder: (context) {
            return GoldScreen();
          },
        );


      case AppRoutes.sliverScreen:
        return MaterialPageRoute(
          builder: (context) {
            return SliverScreen();
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

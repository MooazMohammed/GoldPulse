import 'package:flutter/material.dart';
import 'package:goldpulse/core/networking/dio_helper.dart';
// import 'package:goldpulse/core/networking/dio_helper.dart';
import 'package:goldpulse/core/routing/app_router.dart';
import 'package:goldpulse/core/routing/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  print("✅ DioHelper initialized");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final AppRouter appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.homeScreen,

      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

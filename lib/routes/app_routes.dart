import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/screens/screens.dart';

abstract class AppRoutes {
  static String home = 'home';
  static String details = 'details';
  static String splash = 'splash';
  static String initialRoute = home;

  static Map<String, WidgetBuilder> get routes => {
        home: (_) => const HomeScreen(),
        details: (_) => const DetailsScreen(),
        splash: (_) => const SplashScreen(),
      };
}

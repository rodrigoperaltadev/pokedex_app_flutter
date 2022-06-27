import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_coco_version/screens/screens.dart';

abstract class AppRoutes {
  static String home = '/';
  static String details = '/details';
  static String splash = '/splash';
  static String initialRoute = home;

  static Map<String, WidgetBuilder> get routes => {
        home: (_) => const HomeScreen(),
        details: (_) => const DetailsScreen(),
        splash: (_) => const SplashScreen(),
      };
  static get pages {
    return [
      GetPage(name: home, page: () => const HomeScreen()),
      GetPage(name: details, page: () => const DetailsScreen()),
      GetPage(name: splash, page: () => const SplashScreen()),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/routes/routes.dart';
import 'package:pokedex_coco_version/themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PodeDex',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      theme: AppTheme.defaultTheme,
    );
  }
}

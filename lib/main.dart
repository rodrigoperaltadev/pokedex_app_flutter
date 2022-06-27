import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_coco_version/routes/routes.dart';
import 'package:pokedex_coco_version/themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PodeDex',
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      theme: AppTheme.defaultTheme,
    );
  }
}

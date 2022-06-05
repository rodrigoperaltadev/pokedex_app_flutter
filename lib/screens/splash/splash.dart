import 'package:flutter/material.dart';
import 'package:pokedex_coco_version/themes/themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      gradient: AppTheme.defaultGradient,
    );
    return Scaffold(
      body: Container(
          decoration: boxDecoration,
          child: const Center(
              child: Image(image: AssetImage('assets/pokeball.png')))),
    );
  }
}

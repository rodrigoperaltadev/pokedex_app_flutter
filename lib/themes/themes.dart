import 'package:flutter/material.dart';

class AppTheme {
  static final defaultGradient = LinearGradient(colors: [
    const Color(0xff6e95fd).withOpacity(0.5),
    const Color(0xff6FDEFA).withOpacity(0.5),
    const Color(0xff8de061).withOpacity(0.5),
    const Color(0xff51E85E).withOpacity(0.5),
  ]);

  static const back1 = Color(0xff4f4f4f);

  static ThemeData defaultTheme = ThemeData.light();
}

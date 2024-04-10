import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        displaySmall: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.amber,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
        primary: Colors.amber.shade400,
      ),
      sliderTheme: const SliderThemeData());
}

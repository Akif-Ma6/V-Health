import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: const ColorScheme.dark(
    background: Color(0xFF1B1B1B), // Dark grey for background
    primary: Color.fromARGB(255, 202, 163, 111), // Deep amber for primary
    secondary: Color(0xFF795548), // Brown for secondary
    tertiary: Color(0xFF3E3E3E), // Dark taupe for tertiary
    inversePrimary: Color(0xFFBDBDBD), // Light grey for inverse primary
    onPrimary: Colors.white, // White text on primary
    onSecondary: Colors.white, // Black text on secondary
  ),
);

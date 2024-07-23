import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
    background: Color(0xFFFFF8E1), // Light beige for background
    primary: Color(0xFF8D6E63),  // Light brown for primary
    secondary: Colors.black, // Mustard yellow for secondary
    tertiary: Color.fromARGB(255, 240, 202, 144),  // Light taupe for tertiary
    inversePrimary: Color(0xFF795548), // Brown for inverse primary
    onPrimary: Colors.white, // Black text on primary
    onSecondary: Color.fromARGB(255, 194, 148, 80), // White text on secondary
  ),
);

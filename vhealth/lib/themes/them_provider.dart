import 'package:flutter/material.dart';

import 'dark_mode.dart';
import 'light_mode.dart';


class ThemeProvider extends ChangeNotifier {
  ThemeData _themedata = lightMode;
  ThemeData get themeData => _themedata;
  bool get isDarkMode => _themedata == darkMode;
  set themeData(ThemeData themeData) {
    _themedata = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themedata == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

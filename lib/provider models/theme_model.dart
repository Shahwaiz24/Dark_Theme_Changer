import 'package:flutter/material.dart';

class ThemeModel with ChangeNotifier {
  var themeMode = ThemeMode.light;

  void setTheme({required bool value}) {
    if (value == true) {
      themeMode = ThemeMode.dark;
      notifyListeners();
    } else {
      themeMode = ThemeMode.light;
      notifyListeners();
    }
  }
}

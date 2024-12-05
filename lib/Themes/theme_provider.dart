import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // // ThemeData variable to store the current theme
  // ThemeData _themeData = lightTheme.lightMode;
  // // Getter for the current theme
  // ThemeData get themeData => _themeData;

  // // Checks if the current theme is dark mode
  // bool get isDarkMode => _themeData == darkTheme.darkMode;
  ThemeMode theme = ThemeMode.dark;

  // Setter to update the theme
  void changeTheme() {
    if (theme == ThemeMode.light) {
      theme = ThemeMode.dark;
    } else {
      theme = ThemeMode.light;
    }
    notifyListeners();
  }

  // Toggle between light and dark modes
  // void toggleTheme() {
  //   if (_themeData == lightTheme.lightMode) {
  //     themeData = darkTheme.darkMode; // Calls the setter to switch to dark mode
  //   } else {
  //     themeData =
  //         lightTheme.lightMode; // Calls the setter to switch to light mode
  //   }
  // }
}

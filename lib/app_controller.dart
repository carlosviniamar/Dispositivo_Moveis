import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = new AppController();

  bool isDark = false;

  ChangeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}

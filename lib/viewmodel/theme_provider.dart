import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isLight = true;
  bool get isLight => _isLight;

  set isLight(bool val) {
    _isLight = val;
    notifyListeners();
  }
}

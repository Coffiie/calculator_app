import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  final String _themePreferencesKey = '_themeKey';

  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  set themeMode(ThemeMode val) {
    _themeMode = val;
    notifyListeners();
    setTheme(val);
  }

  late SharedPreferences prefs;

  ThemeProvider() {
    init();
  }

  void init() async {
    prefs = await SharedPreferences.getInstance();
    String? theme = prefs.getString(_themePreferencesKey);
    switch (theme) {
      case 'light':
        themeMode = ThemeMode.light;
        break;
      case 'dark':
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.system;
        break;
    }
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (themeMode) {
      case ThemeMode.system:
        await prefs.setString(_themePreferencesKey, 'system');
        break;
      case ThemeMode.light:
        await prefs.setString(_themePreferencesKey, 'light');
        break;
      case ThemeMode.dark:
        await prefs.setString(_themePreferencesKey, 'dark');
        break;
    }
  }
}

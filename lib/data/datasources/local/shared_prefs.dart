import 'package:flutter/material.dart';
import 'package:shortest_way_task/l10n/app_locale.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const _themeModeKey = 'THEME_MODE_KEY';
  static const _localeKey = 'LOCALE_KEY';
  static const _apiUrl = 'API_URL';

  late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> setThemeMode(ThemeMode mode) async =>
      _preferences.setString(_themeModeKey, mode.name);
  ThemeMode? getThemeMode() {
    final String? value = _preferences.getString(_themeModeKey);
    return value != null
        ? ThemeMode.values.firstWhere((element) => element.name == value)
        : null;
  }

  Future<bool> setLocale(AppLocale locale) async =>
      _preferences.setString(_localeKey, locale.name);
  AppLocale? getLocale() {
    final String? value = _preferences.getString(_localeKey);
    return value != null
        ? AppLocale.values.firstWhere((element) => element.name == value)
        : null;
  }

  Future<bool> setApiUrl(String url) async =>
      _preferences.setString(_apiUrl, url);
  String getApiUrl() {
    return _preferences.getString(_apiUrl) ?? "";
  }
}

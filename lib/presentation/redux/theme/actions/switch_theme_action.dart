import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/presentation/redux/app_state.dart';

class SwitchThemeAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final currentThemeMode = state.themeMode;
    if (currentThemeMode == ThemeMode.light) {
      await locator<SharedPrefs>().setThemeMode(ThemeMode.dark);
      return state.copyWith(themeMode: ThemeMode.dark);
    }

    await locator<SharedPrefs>().setThemeMode(ThemeMode.light);
    return state.copyWith(themeMode: ThemeMode.light);
  }
}

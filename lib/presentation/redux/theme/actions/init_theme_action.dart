import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/presentation/redux/app_state.dart';

class InitThemeAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final themeMode = locator<SharedPrefs>().getThemeMode() ?? ThemeMode.light;
    return state.copyWith(themeMode: themeMode);
  }
}

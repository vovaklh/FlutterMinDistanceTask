import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/application.dart';
import 'package:shortest_way_task/core/di/configuration.dart';
import 'package:shortest_way_task/presentation/redux/locale/actions/init_locale_action.dart';
import 'package:shortest_way_task/presentation/redux/store.dart';
import 'package:shortest_way_task/presentation/redux/theme/actions/init_theme_action.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final store = newStore();
  store.dispatch(InitThemeAction());
  store.dispatch(InitLocaleAction());
  runApp(Application(store: store));
}

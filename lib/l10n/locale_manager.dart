import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shortest_way_task/l10n/app_locale.dart';
import 'package:shortest_way_task/presentation/redux/locale/actions/set_locale_action.dart';

abstract class LocaleManager {
  static void setLocaleAction(BuildContext context, AppLocale locale) {
    StoreProvider.dispatch(context, SetLocaleAction(locale));
  }
}

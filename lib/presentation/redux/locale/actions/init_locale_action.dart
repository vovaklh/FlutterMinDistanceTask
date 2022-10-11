import 'package:async_redux/async_redux.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/l10n/app_locale.dart';
import 'package:shortest_way_task/presentation/redux/app_state.dart';

class InitLocaleAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final locale = locator<SharedPrefs>().getLocale() ?? AppLocale.en;
    return state.copyWith(appLocale: locale);
  }
}

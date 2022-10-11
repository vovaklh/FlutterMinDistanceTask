import 'package:async_redux/async_redux.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/l10n/app_locale.dart';
import 'package:shortest_way_task/presentation/redux/app_state.dart';

class SetLocaleAction extends ReduxAction<AppState> {
  final AppLocale locale;

  SetLocaleAction(this.locale);

  @override
  Future<AppState> reduce() async {
    await locator<SharedPrefs>().setLocale(locale);
    return state.copyWith(appLocale: locale);
  }
}

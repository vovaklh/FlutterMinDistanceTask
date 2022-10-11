import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:shortest_way_task/l10n/app_locale.dart';
import 'package:shortest_way_task/l10n/l10n.dart';
import 'package:shortest_way_task/presentation/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shortest_way_task/presentation/redux/app_state.dart';
import 'package:shortest_way_task/presentation/themes/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Application extends StatelessWidget {
  final Store<AppState> store;

  const Application({required this.store, super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, _ViewModel>(
        vm: () => _Factory(this),
        builder: (BuildContext context, _ViewModel vm) => MaterialApp(
          locale: vm.appLocale.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          theme: createLightTheme(),
          darkTheme: createDarkTheme(),
          themeMode: vm.themeMode,
          home: const HomePage(),
        ),
      ),
    );
  }
}

class _Factory extends VmFactory<AppState, Application> {
  _Factory(widget) : super(widget);

  @override
  _ViewModel fromStore() => _ViewModel(
        themeMode: state.themeMode,
        appLocale: state.appLocale,
      );
}

class _ViewModel extends Vm {
  final ThemeMode themeMode;
  final AppLocale appLocale;

  _ViewModel({
    required this.themeMode,
    required this.appLocale,
  }) : super(equals: [themeMode, appLocale]);
}

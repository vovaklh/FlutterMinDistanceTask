import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shortest_way_task/presentation/themes/theme.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get localizations => AppLocalizations.of(this)!;

  ThemeTextStyles get text => Theme.of(this).extension<ThemeTextStyles>()!;

  ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
}

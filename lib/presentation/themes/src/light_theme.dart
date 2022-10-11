part of '../theme.dart';

ThemeData createLightTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    primaryColor: AppColors.blue,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeTextStyles.light,
    ],
  );
}

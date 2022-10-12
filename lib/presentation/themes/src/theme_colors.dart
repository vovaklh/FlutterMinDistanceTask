part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color test;
  final Color homePageIconColor;
  final Color percentageIndicatorColor;

  const ThemeColors({
    required this.test,
    required this.homePageIconColor,
    required this.percentageIndicatorColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? test,
    Color? homePageIconColor,
    Color? percentageIndicatorColor,
  }) {
    return ThemeColors(
      test: test ?? this.test,
      homePageIconColor: homePageIconColor ?? this.homePageIconColor,
      percentageIndicatorColor: percentageIndicatorColor ?? this.percentageIndicatorColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      test: Color.lerp(test, other.test, t)!,
      homePageIconColor: homePageIconColor,
      percentageIndicatorColor: percentageIndicatorColor,
    );
  }

  static get light => const ThemeColors(
        test: AppColors.white,
        homePageIconColor: AppColors.black,
        percentageIndicatorColor: AppColors.blue,
      );

  static get dark => const ThemeColors(
        test: AppColors.white,
        homePageIconColor: AppColors.black,
        percentageIndicatorColor: AppColors.blue,
      );
}

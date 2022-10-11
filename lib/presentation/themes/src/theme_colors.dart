part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color test;
  final Color homePageIconColor;

  const ThemeColors({
    required this.test,
    required this.homePageIconColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? test,
    Color? homePageIconColor,
  }) {
    return ThemeColors(
      test: test ?? this.test,
      homePageIconColor: homePageIconColor ?? this.homePageIconColor,
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
    );
  }

  static get light => const ThemeColors(
        test: AppColors.white,
        homePageIconColor: AppColors.black,
      );

  static get dark => const ThemeColors(
        test: AppColors.white,
        homePageIconColor: AppColors.black,
      );
}

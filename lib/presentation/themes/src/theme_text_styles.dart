part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle test;
  final TextStyle homePageTitle;
  final TextStyle startCountingButton;
  final TextStyle processPageCalculationResults;
  final TextStyle resultsScreenTitle;

  ThemeTextStyles({
    required this.test,
    required this.homePageTitle,
    required this.startCountingButton,
    required this.processPageCalculationResults,
    required this.resultsScreenTitle,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? test,
    TextStyle? homePageTitle,
    TextStyle? startCountingButton,
    TextStyle? processPageCalculationResults,
    TextStyle? resultsScreenTitle,
  }) {
    return ThemeTextStyles(
      test: test ?? this.test,
      homePageTitle: homePageTitle ?? this.homePageTitle,
      startCountingButton: startCountingButton ?? this.startCountingButton,
      processPageCalculationResults:
          processPageCalculationResults ?? this.processPageCalculationResults,
      resultsScreenTitle: resultsScreenTitle ?? this.resultsScreenTitle,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      test: TextStyle.lerp(test, other.test, t)!,
      homePageTitle: TextStyle.lerp(homePageTitle, other.homePageTitle, t)!,
      startCountingButton:
          TextStyle.lerp(startCountingButton, other.startCountingButton, t)!,
      processPageCalculationResults: TextStyle.lerp(
          processPageCalculationResults,
          other.processPageCalculationResults,
          t)!,
      resultsScreenTitle:
          TextStyle.lerp(resultsScreenTitle, other.resultsScreenTitle, t)!,
    );
  }

  static get light => ThemeTextStyles(
        test: headline1.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
        homePageTitle: headline2.copyWith(
          color: AppColors.black,
        ),
        startCountingButton: headline2.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        processPageCalculationResults: headline1.copyWith(
          color: AppColors.black,
        ),
        resultsScreenTitle: headline1.copyWith(
          color: AppColors.black,
        ),
      );

  static get dark => ThemeTextStyles(
        test: headline1.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        homePageTitle: headline2.copyWith(
          color: AppColors.black,
        ),
        startCountingButton: headline2.copyWith(
          color: AppColors.white,
        ),
        processPageCalculationResults: headline1.copyWith(
          color: AppColors.black,
        ),
        resultsScreenTitle: headline1.copyWith(
          color: AppColors.black,
        ),
      );
}

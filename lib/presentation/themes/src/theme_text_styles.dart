part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle homePageTitle;
  final TextStyle startCountingButton;
  final TextStyle processPageCalculationResults;
  final TextStyle resultsScreenTitle;
  final TextStyle gridPoint;
  final TextStyle previewPageShortestPath;

  ThemeTextStyles({
    required this.homePageTitle,
    required this.startCountingButton,
    required this.processPageCalculationResults,
    required this.resultsScreenTitle,
    required this.gridPoint,
    required this.previewPageShortestPath,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? homePageTitle,
    TextStyle? startCountingButton,
    TextStyle? processPageCalculationResults,
    TextStyle? resultsScreenTitle,
    TextStyle? gridPoint,
    TextStyle? previewPageShortestPath,
  }) {
    return ThemeTextStyles(
      homePageTitle: homePageTitle ?? this.homePageTitle,
      startCountingButton: startCountingButton ?? this.startCountingButton,
      processPageCalculationResults:
          processPageCalculationResults ?? this.processPageCalculationResults,
      resultsScreenTitle: resultsScreenTitle ?? this.resultsScreenTitle,
      gridPoint: gridPoint ?? this.gridPoint,
      previewPageShortestPath:
          previewPageShortestPath ?? this.previewPageShortestPath,
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
      homePageTitle: TextStyle.lerp(homePageTitle, other.homePageTitle, t)!,
      startCountingButton:
          TextStyle.lerp(startCountingButton, other.startCountingButton, t)!,
      processPageCalculationResults: TextStyle.lerp(
          processPageCalculationResults,
          other.processPageCalculationResults,
          t)!,
      resultsScreenTitle:
          TextStyle.lerp(resultsScreenTitle, other.resultsScreenTitle, t)!,
      gridPoint: TextStyle.lerp(gridPoint, other.gridPoint, t)!,
      previewPageShortestPath: TextStyle.lerp(
          previewPageShortestPath, other.previewPageShortestPath, t)!,
    );
  }

  static get light => ThemeTextStyles(
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
        gridPoint: headline1.copyWith(
          color: AppColors.black,
        ),
        previewPageShortestPath: headline1.copyWith(
          color: AppColors.black,
        ),
      );

  static get dark => ThemeTextStyles(
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
        gridPoint: headline1.copyWith(
          color: AppColors.black,
        ),
        previewPageShortestPath: headline1.copyWith(
          color: AppColors.black,
        ),
      );
}

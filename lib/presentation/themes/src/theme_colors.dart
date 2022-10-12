part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color homePageIconColor;
  final Color percentageIndicatorColor;
  final Color startPoint;
  final Color endPoint;
  final Color blockedPoint;
  final Color shortestPathPoint;
  final Color defaultPoint;
  final Color cellBorder;

  const ThemeColors({
    required this.homePageIconColor,
    required this.percentageIndicatorColor,
    required this.startPoint,
    required this.endPoint,
    required this.blockedPoint,
    required this.shortestPathPoint,
    required this.defaultPoint,
    required this.cellBorder,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? homePageIconColor,
    Color? percentageIndicatorColor,
    Color? startPoint,
    Color? endPoint,
    Color? blockedPoint,
    Color? shortestPathPoint,
    Color? defaultPoint,
    Color? cellBorder,
  }) {
    return ThemeColors(
      homePageIconColor: homePageIconColor ?? this.homePageIconColor,
      percentageIndicatorColor:
          percentageIndicatorColor ?? this.percentageIndicatorColor,
      startPoint: startPoint ?? this.startPoint,
      endPoint: endPoint ?? this.endPoint,
      blockedPoint: blockedPoint ?? this.blockedPoint,
      shortestPathPoint: shortestPathPoint ?? this.shortestPathPoint,
      defaultPoint: defaultPoint ?? this.defaultPoint,
      cellBorder: cellBorder ?? this.cellBorder,
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
      homePageIconColor: homePageIconColor,
      percentageIndicatorColor: percentageIndicatorColor,
      startPoint: startPoint,
      endPoint: endPoint,
      blockedPoint: blockedPoint,
      shortestPathPoint: shortestPathPoint,
      defaultPoint: defaultPoint,
      cellBorder: cellBorder,
    );
  }

  static get light => ThemeColors(
        homePageIconColor: AppColors.black,
        percentageIndicatorColor: AppColors.blue,
        startPoint: const Color(0xFF64FFDA),
        endPoint: const Color(0xFF009688),
        blockedPoint: AppColors.black.withOpacity(0.85),
        shortestPathPoint: const Color(0xFF4CAF50),
        defaultPoint: AppColors.white,
        cellBorder: AppColors.black,
      );

  static get dark => ThemeColors(
        homePageIconColor: AppColors.black,
        percentageIndicatorColor: AppColors.blue,
        startPoint: const Color(0xFF64FFDA),
        endPoint: const Color(0xFF009688),
        blockedPoint: AppColors.black.withOpacity(0.85),
        shortestPathPoint: const Color(0xFF4CAF50),
        defaultPoint: AppColors.white,
        cellBorder: AppColors.black,
      );
}

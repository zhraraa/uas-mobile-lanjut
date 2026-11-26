import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColors.colorScheme,
      textTheme: AppTypography.textTheme,
      scaffoldBackgroundColor: AppColors.basePutih,
      fontFamily: 'PlusJakartaSans',
    );
  }
}
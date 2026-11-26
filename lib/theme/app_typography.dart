import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  static const String _fontFamily = 'PlusJakartaSans';

  static const TextTheme textTheme = TextTheme(
    //judul besar
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.w700, // Bold (700)
      color: AppColors.primaryTeks,
    ),

    //judul medium
    titleMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTeks,
    ),

    //teks label
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTeks,
    ),

    //teks isi
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTeks,
    ),

    //teks kecil
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Color(0xFF6B7280),
    ),
  );
}
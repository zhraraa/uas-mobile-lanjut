import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBiru = Color(0xFF4B50D6);
  static const Color secondaryBiru = Color(0xFF1E2270);
  static const Color baseKuning = Color(0xFFF7D76B);
  static const Color basePutih = Color(0xFFFFFFFF);
  static const Color baseAbu = Color(0xFFF1F2F6);
  static const Color mutedStroke = Color(0xFFB8BDC7);
  static const Color primaryTeks = Color(0xFF111827);
  
  static const Color hijauSukses = Color(0xFF2E7D32);
  static const Color baseSukses = Color(0xFFEFFFE4);
  static const Color merahError = Color(0xFFD32F2F);
  static const Color baseError = Color(0xFFF9E8E7);

  static const ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    
    primary: primaryBiru,
    onPrimary: basePutih, 
    
    secondary: secondaryBiru,
    onSecondary: basePutih,
    
    tertiary: baseKuning,
    onTertiary: primaryTeks,
    
    surface: basePutih,
    onSurface: primaryTeks,
    
    surfaceContainerHighest: baseAbu, 
    onSurfaceVariant: Color(0xFF6B7280), 
    
    outline: mutedStroke,
    outlineVariant: Color(0xFFE5E7EB),
    
    error: merahError,
    onError: basePutih,
    errorContainer: baseError,
    onErrorContainer: merahError,
  );
}
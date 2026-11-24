import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFF1F4F8);
  static const Color primaryPurple = Color(0xFF4B39EF);
  static const Color loginButtonBlue = Color(0xFF4143DF);
  static const Color inputFillWhite = Color(0xFFFFFFFF);
  static const Color borderDark = Color(0xFF2B2D3A);
  static const Color textDark = Color(0xFF14181B);
  static const Color textMuted = Color(0xFF6B7280);
  static const Color iconBlack = Color(0xFF111318);
  static const Color badgeCoral = Color(0xFFF06A59);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryPurple,
        surface: AppColors.background,
        primary: AppColors.primaryPurple,
        secondary: AppColors.loginButtonBlue,
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
          letterSpacing: -0.2,
        ),
        headlineSmall: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          color: AppColors.textDark,
        ),
        titleMedium: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: AppColors.textDark,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textMuted,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textMuted,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

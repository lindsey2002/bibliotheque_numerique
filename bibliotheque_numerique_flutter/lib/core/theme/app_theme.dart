import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.surface,
        primary: AppColors.accent,
        onPrimary: AppColors.accentOn,
        secondary: AppColors.accent,
        error: AppColors.error,
        onSurface: AppColors.textPrimary,
      ),
      textTheme: AppTypography.dark,

      // Cartes (livres, panels...)
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColors.border, width: 0.5),
        ),
      ),

      // Boutons pleins (action principale : Se connecter, Écouter...)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: AppColors.accentOn,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: AppTypography.dark.labelLarge,
        ),
      ),

      // Boutons outline (actions secondaires : Google, Facebook, Favoris...)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.textPrimary,
          side: const BorderSide(color: AppColors.border, width: 0.5),
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 26),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: AppTypography.dark.labelLarge,
        ),
      ),

      // Champs de saisie (email, mot de passe, recherche...)
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceElevated,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        hintStyle: AppTypography.dark.bodyMedium,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.border, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.accent, width: 1),
        ),
      ),

      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: 0.5,
      ),
    );
  }

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorsLight.background,
      colorScheme: const ColorScheme.light(
        surface: AppColorsLight.surface,
        primary: AppColorsLight.accent,
        onPrimary: AppColorsLight.accentOn,
        secondary: AppColorsLight.accent,
        error: AppColorsLight.error,
        onSurface: AppColorsLight.textPrimary,
      ),
      textTheme: AppTypography.light,
      cardTheme: CardThemeData(
        color: AppColorsLight.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: AppColorsLight.border, width: 0.5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorsLight.accent,
          foregroundColor: AppColorsLight.accentOn,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: AppTypography.light.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorsLight.textPrimary,
          side: const BorderSide(color: AppColorsLight.border, width: 0.5),
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 26),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: AppTypography.light.labelLarge,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorsLight.surfaceElevated,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        hintStyle: AppTypography.light.bodyMedium,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColorsLight.border, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColorsLight.border, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColorsLight.accent, width: 1),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColorsLight.border,
        thickness: 0.5,
      ),
    );
  }
}
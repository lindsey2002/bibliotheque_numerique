import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Typographie de l'application.
/// - Fraunces (serif éditorial) : titres, noms de livres, moments "premium"
/// - Work Sans (sans-serif) : texte courant, UI, labels
class AppTypography {
  AppTypography._();

  static TextTheme get dark => _buildTextTheme(
        primary: AppColors.textPrimary,
        secondary: AppColors.textSecondary,
        muted: AppColors.textMuted,
      );

  static TextTheme get light => _buildTextTheme(
        primary: AppColorsLight.textPrimary,
        secondary: AppColorsLight.textSecondary,
        muted: AppColorsLight.textMuted,
      );

  static TextTheme _buildTextTheme({
    required Color primary,
    required Color secondary,
    required Color muted,
  }) {
    return TextTheme(
      displayLarge: GoogleFonts.fraunces(
        fontSize: 40, fontWeight: FontWeight.w500, color: primary, height: 1.2,
      ),
      displayMedium: GoogleFonts.fraunces(
        fontSize: 34, fontWeight: FontWeight.w500, color: primary, height: 1.25,
      ),
      headlineSmall: GoogleFonts.fraunces(
        fontSize: 24, fontWeight: FontWeight.w500, color: primary, height: 1.3,
      ),
      bodyLarge: GoogleFonts.workSans(
        fontSize: 16, fontWeight: FontWeight.w400, color: primary, height: 1.5,
      ),
      bodyMedium: GoogleFonts.workSans(
        fontSize: 14, fontWeight: FontWeight.w400, color: secondary, height: 1.5,
      ),
      bodySmall: GoogleFonts.workSans(
        fontSize: 12, fontWeight: FontWeight.w400, color: muted, height: 1.4,
      ),
      labelLarge: GoogleFonts.workSans(
        fontSize: 15, fontWeight: FontWeight.w500, color: primary,
      ),
      labelMedium: GoogleFonts.workSans(
        fontSize: 12, fontWeight: FontWeight.w500, color: primary,
      ),
    );
  }
}
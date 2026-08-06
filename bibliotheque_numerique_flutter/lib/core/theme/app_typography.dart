import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// Typographie de l'application.
/// - Fraunces (serif éditorial) : titres, noms de livres, moments "premium"
/// - Work Sans (sans-serif) : texte courant, UI, labels
class AppTypography {
  AppTypography._();

  static TextTheme get textTheme => TextTheme(
        // Grands titres (ex: hero principal)
        displayLarge: GoogleFonts.fraunces(
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
          height: 1.2,
        ),
        displayMedium: GoogleFonts.fraunces(
          fontSize: 34,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
          height: 1.25,
        ),

        // Titres de section / titres de livre
        headlineSmall: GoogleFonts.fraunces(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
          height: 1.3,
        ),

        // Corps de texte
        bodyLarge: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary,
          height: 1.5,
        ),
        bodyMedium: GoogleFonts.workSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondary,
          height: 1.5,
        ),
        bodySmall: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textMuted,
          height: 1.4,
        ),

        // Boutons / labels / UI
        labelLarge: GoogleFonts.workSans(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
        labelMedium: GoogleFonts.workSans(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
      );
}
import 'package:flutter/material.dart';

/// Palette de couleurs de l'application.
/// Thème : bleu nuit étoilé + accent sauge.
class AppColors {
  AppColors._();

  static const Color background = Color(0xFF050A10);
  static const Color surface = Color(0xFF0D1218);
  static const Color surfaceElevated = Color(0xFF10151C);
  static const Color border = Color(0xFF1B2129); // ← bordures beaucoup plus discrètes

  // Accent — remplace 0xFFA9C99A par UNE des 3 couleurs ci-dessus
  static const Color accent = Color(0xFFFF6A4D); // ex: corail vif
  static const Color accentOn = Color(0xFF050A10);

  // Textes
  static const Color textPrimary = Color(0xFFFAFAF7);
  static const Color textSecondary = Color(0xFF9AA3AE);
  static const Color textMuted = Color(0xFF6B7480);

  // États
  static const Color success = Color(0xFFFF6A4D); // = accent
  static const Color warning = Color(0xFFE8A845);
  static const Color error = Color(0xFFE05C4E);

  static const Color draft = Color(0xFF1B2129);
}
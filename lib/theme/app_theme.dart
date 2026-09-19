// lib/theme/app_theme.dart

import 'package:flutter/material.dart';

class AppTheme {
  // 1. Definición de la Paleta de Colores
  static const Color primaryColor = Color(0xFF1E3A8A); // Azul marino profundo
  static const Color accentColor = Color(0xFFF97316); // Naranja vibrante
  static const Color backgroundColor = Color(
    0xFFF3F4F6,
  ); // Gris muy claro para el fondo
  static const Color cardColor = Colors.white;
  static const Color textPrimary = Color(
    0xFF1F2937,
  ); // Gris muy oscuro casi negro
  static const Color textSecondary = Color(0xFF6B7280); // Gris medio

  // 2. Configuración del Tema Global (ThemeData)
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: accentColor,
        background: backgroundColor,
      ),

      // Configuración de la AppBar (Barra superior)
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2, // Un toque elegante
        ),
      ),

      // Configuración de las Tarjetas (Cards)
      cardTheme: CardThemeData(
        color: cardColor,
        elevation: 3,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ), // Bordes más redondeados y modernos
        ),
      ),

      // Configuración de los ChoiceChips (Filtros)
      chipTheme: ChipThemeData(
        backgroundColor: Colors.white,
        selectedColor: primaryColor,
        labelStyle: const TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.w500,
        ),
        secondaryLabelStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color(0xFFE5E7EB)),
        ),
      ),

      // Tipografía general
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: textPrimary, fontSize: 16),
        bodyMedium: TextStyle(color: textSecondary, fontSize: 14),
      ),
    );
  }
}

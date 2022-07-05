import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telling/ui/styles/color_theme.dart';
import 'package:telling/ui/styles/text_styles_app.dart';
import 'package:telling/ui/styles/theme_text.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
        primaryColor: ColorTheme.blue,
        colorScheme: ColorScheme(
          primary: ColorTheme.blue,
          secondary: ColorTheme.black,
          background: ColorTheme.white,
          onBackground: ColorTheme.white,
          surface: const ColorScheme.light().surface,
          error: ColorTheme.black,
          onPrimary: const ColorScheme.light().onPrimary,
          onSecondary: const ColorScheme.light().onSecondary,
          onSurface: const ColorScheme.light().onSurface,
          onError: const ColorScheme.light().onError,
          brightness: const ColorScheme.light().brightness,
        ),
        backgroundColor: ColorTheme.white,
        scaffoldBackgroundColor: ColorTheme.white,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
        textTheme: AppTextTheme(),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyleApp.bodyXs(ColorTheme.black),
          backgroundColor: ColorTheme.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: ColorTheme.black,
            size: 15,
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleApp {
  static final bodyXs = (Color color) => GoogleFonts.nunitoSans().copyWith(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      );
}

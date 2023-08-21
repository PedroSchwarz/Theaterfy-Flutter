import 'package:flutter/material.dart';

class AlaskaTypography {
  final TextStyle d1;
  final TextStyle d2;
  final TextStyle d3;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle p1;
  final TextStyle p2;
  final TextStyle p3;
  final TextStyle p4;

  const AlaskaTypography._({
    required this.d1,
    required this.d2,
    required this.d3,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.p1,
    required this.p2,
    required this.p3,
    required this.p4,
  });

  factory AlaskaTypography(Color textColor) => AlaskaTypography._(
        d1: TextStyle(
          fontSize: 68,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.01,
          color: textColor,
        ),
        d2: TextStyle(
          fontSize: 52,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.02,
          color: textColor,
        ),
        d3: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.02,
          color: textColor,
        ),
        h1: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.02,
          color: textColor,
        ),
        h2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.01,
          color: textColor,
        ),
        h3: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.01,
          color: textColor,
        ),
        h4: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          letterSpacing: -0.01,
          color: textColor,
        ),
        p1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: textColor,
        ),
        p2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: textColor,
        ),
        p3: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: textColor,
        ),
        p4: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.normal,
          color: textColor,
        ),
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
}

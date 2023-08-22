import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  AlaskaData get alaska => AlaskaTheme.of(this);
}

import 'package:flutter/material.dart';

class TIconButtonTheme {
  TIconButtonTheme._();

  // FOR LIGHT THEME
  static final lightTIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.black),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      overlayColor: WidgetStateProperty.all(Colors.blue.withOpacity(0.1)), // Ripple effect
    ),
  );

  // FOR DARK THEME
  static final darkTIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.white),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      overlayColor: WidgetStateProperty.all(Colors.blue.withOpacity(0.1)), // Ripple effect
    ),
  );
}

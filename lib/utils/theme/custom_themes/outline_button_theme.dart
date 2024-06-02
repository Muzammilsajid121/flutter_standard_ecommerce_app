import 'package:flutter/material.dart';

// Light and dark outline  button theme
class TOutlineTheme {
  TOutlineTheme._();
  static final LightTOutlineTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
// for Dark mode
  static final darkTOutlineTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
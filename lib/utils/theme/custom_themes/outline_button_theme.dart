import 'package:flutter/material.dart';

class TOutlineButtonTheme {
  TOutlineButtonTheme._();

  // FOR LIGHT THEME
  static final lightTOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    // backgroundColor: Colors.red,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    textStyle: const TextStyle( fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    
  )
  );


// for Dark mode
  static final darkTOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
    textStyle: const TextStyle( fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  )
  );



}
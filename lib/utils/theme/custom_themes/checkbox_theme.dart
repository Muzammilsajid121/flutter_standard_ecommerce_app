import 'package:flutter/material.dart';

//Custom class for Light & dark Text themes

class TCheckboxTheme {
  TCheckboxTheme._();
  static CheckboxThemeData LightCheckTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));
// customizable dark Text theme
  static CheckboxThemeData darkCheckTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));
}
///custam
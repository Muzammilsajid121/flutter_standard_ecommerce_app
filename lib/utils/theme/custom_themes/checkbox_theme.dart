import 'package:flutter/material.dart';

//Custom class for Light & dark Text themes

class TCheckboxTheme {
  TCheckboxTheme._();

  //FOR LIGHT THEME
  static CheckboxThemeData lightCheckTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        //if checkbox selected(check color)
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      }),
      //whole checkbox background color
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      }));



// FOR DARK THEME
  static CheckboxThemeData darkCheckTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      // If checkbox selected (check color)
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    // Whole checkbox background color
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),

    //border color
    side: WidgetStateBorderSide.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return BorderSide(color: Colors.green);
      } else {
        return BorderSide(color: Colors.grey);
      }
    }),
  );


  // //FOR DARK THEME
  // static CheckboxThemeData darkCheckTheme = CheckboxThemeData(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  //     checkColor: WidgetStateProperty.resolveWith((states) {
  //       //if checkbox selected(check color)
  //       if (states.contains(WidgetState.selected)) {
  //         return Colors.white;
  //       } else {
  //         return Colors.black;
  //       }
  //     }),
  //     //whole checkbox background color
  //     fillColor: WidgetStateProperty.resolveWith((states) {
  //       if (states.contains(WidgetState.selected)) {
  //         return Colors.blue;
  //       } else {
  //         return Colors.grey;
  //       }
  //     }));




}

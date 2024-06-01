import 'package:flutter/material.dart';

class TBottomSheetTheme {
  // To avoid creating instance
  TBottomSheetTheme._();

  // FOR LIGHT THEME
  static const  lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16)), ),
    
    );



  // FOR DARK THEME
  static const darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16)), ),
    
    );




}
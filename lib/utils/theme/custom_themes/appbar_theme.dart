import 'package:flutter/material.dart';

class TAppBarTheme {
  // To avoid creating instance
  TAppBarTheme._();

  // FOR LIGHT THEME
  static const  lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    iconTheme:IconThemeData(color: Colors.black,size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle:  TextStyle( color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600,),
  );

  // FOR DARK THEME
  static const  darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    iconTheme:IconThemeData(color: Colors.black,size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle:  TextStyle( color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600,),
  );



}

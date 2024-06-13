import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_standard_ecommerce_app/utils/theme/custom_themes/text_theme.dart';

class TAppTheme{
  //make const private
  TAppTheme._();


  //LIGHT THEME
  static ThemeData lightTheme = ThemeData(
   brightness: Brightness.light,
   scaffoldBackgroundColor: Colors.white,
   colorScheme: const ColorScheme.light(brightness: Brightness.light, primary: Colors.blue,secondary: Colors.amber,),
   primaryColor: Colors.red,
   useMaterial3: true,  
   textTheme: TTextTheme.lightTextTheme,
   elevatedButtonTheme: TElevatedButtonTheme.ligthElevatedButtonTheme,
   appBarTheme: TAppBarTheme.lightAppBarTheme,
   chipTheme: TChiptheme.lightChipTheme,
   checkboxTheme: TCheckboxTheme.lightCheckTheme,
   outlinedButtonTheme: TOutlineButtonTheme.lightTOutlineButtonTheme,
   inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  
  //DARK THEME
  static ThemeData darkTheme = ThemeData(
   brightness: Brightness.dark,
   scaffoldBackgroundColor: Colors.black,
   colorScheme: const ColorScheme.light(brightness: Brightness.dark, primary: Colors.blue,secondary: Colors.amber,),
  //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
   primaryColor: Colors.blue,
   useMaterial3: true,  
   textTheme: TTextTheme.darkTextTheme,
   elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
   appBarTheme: TAppBarTheme.darkAppBarTheme,
   chipTheme: TChiptheme.darkChipTheme,
   checkboxTheme: TCheckboxTheme.darkCheckTheme,
   outlinedButtonTheme: TOutlineButtonTheme.darkTOutlineButtonTheme,
   inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,

  );
  


}
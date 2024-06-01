
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme{
  //make const private
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    
   brightness: Brightness.light,
   scaffoldBackgroundColor: Colors.white,
   colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
   primaryColor: Colors.blue,
   useMaterial3: true,
   
   appBarTheme:  const  AppBarTheme(
   backgroundColor: Color.fromARGB(255, 253, 183, 178), foregroundColor: Color.fromARGB(255, 255, 1, 77)),

    
   textTheme: TextTheme(
          //display
            displaySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w500, color: Colors.black),
            //Body Small
            bodySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w400, color: Colors.black), 
            //Body Medium
            bodyMedium: GoogleFonts.montserrat(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
            //Body Large
            bodyLarge: GoogleFonts.aBeeZee(fontSize: 17,  fontWeight: FontWeight.w600, color: Colors.black),
            //
            titleMedium: GoogleFonts.aBeeZee(fontSize: 23, color: Colors.black , fontWeight: FontWeight.bold),
            //
            titleLarge: GoogleFonts.montserrat(fontSize: 28, color: Colors.white , fontWeight: FontWeight.w700),


        ),

  );
  static ThemeData darkTheme = ThemeData();
  


}
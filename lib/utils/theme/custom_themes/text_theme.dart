import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
 
     //display Small
     displaySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w500, color: Colors.black),
    //Body Small
     bodySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w400, color: Colors.black), 
     //Body Medium
     bodyMedium: GoogleFonts.montserrat(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
     //Body Large
     bodyLarge: GoogleFonts.aBeeZee(fontSize: 17,  fontWeight: FontWeight.w600, color: Colors.black),
     //Title Med
     titleMedium: GoogleFonts.aBeeZee(fontSize: 23, color: Colors.black , fontWeight: FontWeight.bold),
     //Title Large
     titleLarge: GoogleFonts.montserrat(fontSize: 28, color: Colors.black , fontWeight: FontWeight.bold),

  );



  static TextTheme darkTextTheme =  TextTheme(

    //display Small
     displaySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w500, color: Colors.white),
    //Body Small
     bodySmall: GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w400, color: Colors.white), 
     //Body Medium
     bodyMedium: GoogleFonts.montserrat(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
     //Body Large
     bodyLarge: GoogleFonts.aBeeZee(fontSize: 17,  fontWeight: FontWeight.w600, color: Colors.white),
     //Title Med
     titleMedium: GoogleFonts.aBeeZee(fontSize: 23, color: Colors.white , fontWeight: FontWeight.bold),
     //Title Large
     titleLarge: GoogleFonts.montserrat(fontSize: 28, color: Colors.white , fontWeight: FontWeight.bold),

  );


  
}
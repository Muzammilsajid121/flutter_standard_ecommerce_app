// import 'package:validators/validators.dart';

class Tvalidator {

  //-- Empty text validation
  static String? validateEmptyText (String? fieldName, String? value){
    if(value == null || value.isEmpty){
      return '$fieldName is required' ;
    }
    return null;
  }

  //-- Email validation
  static String? validateEmail(String? value) {

    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

//regular expression for email validation | if email matches the pattern
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Adress' ;
    }
      return null;
  }

// -- password criteria
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password  is required';
    }
    if (value.length < 6) {
      return 'Password must be at 6 charactor long';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must be at Least one number';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must be at one Upper case';
    }
// you can add more thing like specail charactor for the same things
    return null;
  }

//-- Phone number criteria
  static String? validatPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required ';
    }
    // Regulor expression for phone number validation
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number formate ';
    }
    return null;
  }

  
}
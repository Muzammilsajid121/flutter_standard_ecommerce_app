// import 'package:validators/validators.dart';

class Tvalidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
//regular expreestin for email validation
    final emailRegExp = RegExp(r'^[\w-\.]\+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password  is required';
    }
    if (value.length < 6) {
      return 'Password must be at 6 charactor long';
    }
// for number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must be at Least one number';
    }
// for upercase use in passwoed
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must be at one Upper case';
    }
// your can more thing like specail charactor for the same things
    return null;
  }

  static String? validatPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone is required ';
    }
    // Regulor expression for phone number validation
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number formate ';
    }
    return null;
  }

  
}
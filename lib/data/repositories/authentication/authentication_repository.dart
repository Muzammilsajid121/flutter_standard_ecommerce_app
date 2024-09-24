import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find(); //! static getter method
  
  //-- Variables
  final deviceStorage = GetStorage();

  // called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //-- Function to show relevant screen
  screenRedirect() async{
    //Local Storage
    deviceStorage.writeIfNull('isFirstTime', true);  // if there is nothing added in this key

    // IF first time take to on boarding screen
    deviceStorage.read('isFirstTime') != true?
      Get.offAll( ()=>LoginScreen()) : Get.offAll( ()=> OnBoardingScreen());
  }





//* ---------------------------------- Email & Password sign-in ------------------------------///

/// [EmailAuthentication] - SignIn

/// [EmailAuthentication] - REGISTER

/// [ReAuthenticate] - ReAuthenticate User

/// [EmailVerification] - MAIL VERIFICATION

/// [EmailAuthentication] - FORGET PASSWORD

//* ------------------------------ Federated identity & social sign-in ----------------------------///

/// [GoogleAuthentication] - GOOGLE

/// [FacebookAuthentication] - FACEBOOK

//* ------------------------------ ./end Federated identity & social sign-in ------------------------///

/// [LogoutUser] - Valid for any authentication.

/// DELETE USER - Remove user Auth and Firestore Account.








}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/user/user_model.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/verify_email_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //-- Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); //! check notes

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;

  // -- SIGNUP
  void signup() async {
    try {
      //-- Start Loading
      TFullScreenLaoder.openLoadingDialog('We are processing your information', TImages.loading);

      //-- Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        debugPrint('No Internet');
        TFullScreenLaoder.stopLoading();
       
        return;
      } 
      

      //-- Form Validation
      if(!signupFormKey.currentState!.validate()){
        debugPrint('No validation');
        TFullScreenLaoder.stopLoading();
        return;
      } 

      //-- Privacy Policy Check
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account read and accept privacy policy');
          debugPrint('No Privacy');
          TFullScreenLaoder.stopLoading();
          return;
      }

  //-- Register user in the Firebase Authentication & Save user data in the Firebase
  final userCredential = await AuthenticationRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());

  //--  Save Authenticated user data in the Firebase Firestore
  final newUser = UserModel(
  id: userCredential!.user!.uid,            
  firstName: firstName.text.trim(),
  lastName: lastName.text.trim(),
  username: userName.text.trim(),
  email: email.text.trim(),
  phoneNumber: phoneNumber.text.trim(),
  profilePicture: '', // Replace with actual profile picture URL
  );

  final userRepository = Get.put(UserRepository());
  await userRepository.saveUserRecord(newUser);

  //-- Remove Loader
  TFullScreenLaoder.stopLoading();

  //-- Show Success Message
  TLoaders.successSnackBar(title: "Congratulations!", message: "Your account has been created! Verify your email to continue.");

  //--  Move to Verify Email Screen
  Get.to(()=> const VerifyEmailScreen(email: 'email',));


  } catch (e) {

  //-- Remove Loader
  TFullScreenLaoder.stopLoading();

  //-- Show some Generic Error to the user
  TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());


    }
  }
}

import 'package:flutter/material.dart';
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
  Future<void> signup() async {
    try {
      //-- Start Loading
      TFullScreenLaoder.openLoadingDialog('We are processing your information', TImages.decorImage);

      //-- Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) return;
      

      //-- Form Validation
      if(signupFormKey.currentState!.validate()) return;

      //-- Privacy Policy Check
      if(!privacyPolicy.value){
        TLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account read and accept privacy policy');
          return;
      }

      //-- Register user in the Firebase Authentication & Save user data in the Firebase

      //-- Save Authenticated user data in the Firebase Firestore

      //-- Show Success Message

      //-- Move to Verify Email Screen

    } catch (e) {
      //-- Show some Generic Error to the user
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());


    } finally {
      //-- Remove Loader
      TFullScreenLaoder.stopLoading();
    }
  }
}

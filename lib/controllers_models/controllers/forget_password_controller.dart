import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/repositories/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/reset_password_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // Send Reset Password Email
  sendPasswordResetEmail() async {
    try {
      // Start Loading
      TFullScreenLaoder.openLoadingDialog('Processing your request...', TImages.loading);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLaoder.stopLoading();
        return;
      }

      // Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLaoder.stopLoading();
        return;
      }

      // Send Email to Reset Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      // Remove Loader
      TFullScreenLaoder.stopLoading();

      //show success screen
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email link sent to reset your password'.tr);

      //Redirect
      Get.to( ()=> ResetPasswordScreen(email: email.text.trim()) );




    } catch (e) {
      TFullScreenLaoder.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }

  }


  //-- Resend Password Reset
  resendPasswordResetEmail(String email) async {
        try {
      // Start Loading
      TFullScreenLaoder.openLoadingDialog('Processing your request...', TImages.loading);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLaoder.stopLoading();
        return;
      }

      // Send Email to Reset Password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove Loader
      TFullScreenLaoder.stopLoading();

      //show success screen
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Email link sent to reset your password'.tr);


    } 
    catch (e) {
      TFullScreenLaoder.stopLoading();
      TLoaders.errorSnackBar(title: 'Error', message: e.toString());
    }

  }

  
}

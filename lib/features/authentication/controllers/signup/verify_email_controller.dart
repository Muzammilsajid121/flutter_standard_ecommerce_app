import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/success_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  /// Send Email whenever Verify Screen appears & Set Timer for auto redirect.
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  /// Send Email Verification Link
  sendEmailVerification() async {
    try {
      //--- Authentication repo sendemailverification() call here
      await AuthenticationRepository.instance.sendEmailVerification();
      TLoaders.successSnackBar(title: 'Email Sent', message: 'Please Check your inbox and verify your email.');
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  //--  Timer to automatically redirect on Email Verification
  setTimerForAutoRedirect() {
   Timer.periodic(
    const Duration(seconds: 1),
    (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
          () => SuccessScreen(
            image: TImages.success, //!sucessfully register animation
            title: TText.yourAccountCreatedTitle,
            subtitle: TText.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ),
        );
      }
    },
  );
}

//--  Manually Check if Email Verified
  checkEmailVerificationStatus() async {
  final currentUser = FirebaseAuth.instance.currentUser;

  if (currentUser != null && currentUser.emailVerified) {
    Get.off(()=> 
    SuccessScreen(
            image: TImages.success,
            title: TText.yourAccountCreatedTitle,
            subtitle: TText.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
            
          ),
      );
  }
}

  
}

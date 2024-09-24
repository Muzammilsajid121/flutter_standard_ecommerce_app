
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

//--  A utility class for managing a full-screen loading dialog.
class TFullScreenLaoder{
/// 
/// Open a full-screen loading dialog with a given text and animation.
/// This method doesn't return anything.
//--  Parameters:
/// - text: The text to be displayed in the loading dialog.
/// - animation: The Lottie animation to be shown.

static void openLoadingDialog(String text, String animation) {
  showDialog(
    context: Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
    barrierDismissible: false, // The dialog can't be dismissed by tapping outside
    builder: (_) => PopScope(
      canPop: false, // Disable popping with the back button
      child: Container(
        color: THelperFucntion.isDarkMode(Get.context!)
            ? TColors.dark
            : TColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 250),
            TAnimationLoaderWidget(text: text, animation: animation),
          ],
        ),
      ),
    ),
  );
}

//-- stop the currently running dialog | This method doesn't return anything
static stopLoading(){
  Navigator.of(Get.overlayContext!).pop(); //close the dialog using navigator
}

}
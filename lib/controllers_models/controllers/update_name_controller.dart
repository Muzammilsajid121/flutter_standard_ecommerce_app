// Controller to manage user-related functionality
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/repositories/user_repository.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/controllers/user_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();

  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState> updateUserNameFormkey = GlobalKey<FormState>();

  // Init user data when Home Screen appears
  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  // Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  //--update user name
Future<void> updateUserName() async {
  try {
    // Start Loading
    TFullScreenLaoder.openLoadingDialog(
        "We are updating your information...", TImages.loading);

    // Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();

    if (!isConnected) {
      TFullScreenLaoder.stopLoading();
      return;
    }

    // Form Validation
    if (updateUserNameFormkey.currentState!.validate()) {
      // Proceed with updating the user's first & last name in Firebase Firestore
      Map<String, dynamic> name = {
        'firstName': firstName.text.trim(),
        'lastName': lastName.text.trim()
      };

      //* update single field function called from userRepository with the json 'name'
      await userRepository.updateSingleField(name);

      // Update the Rx User value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // Remove Loader
      TFullScreenLaoder.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(title: "Congratulations", message: "Your Name has been updated.");

      // Move to previous screen
      Get.off(() => const ProfileScreen());
    } else {
      // If validation fails, stop the loader
      TFullScreenLaoder.stopLoading();
    }
  } catch (e) {
    TFullScreenLaoder.stopLoading();
    TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
  }
}




}
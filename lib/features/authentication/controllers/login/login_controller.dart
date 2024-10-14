import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController{

  //-- variables
  final localStorage = GetStorage();
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  //-- To read data || when you logout it save email & password if you check remember me optn.
  @override
  void onInit(){
    //! If the value in GetStorage is null, use an empty string
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }


  //-- Email and Password Signin
  Future<void> emailAndPasswordSignIn() async {
  try {
    // Start Loading
    TFullScreenLaoder.openLoadingDialog('Logging you in...', TImages.loading);

    // Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLaoder.stopLoading();
      return;
    }

    // Form Validation
    if (!loginFormKey.currentState!.validate()) {
      TFullScreenLaoder.stopLoading();
      return;
    }

    // Save Data if Remember Me is selected
    if (rememberMe.value) {
      localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
      localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
    }

    // Login user using Email & Password Authentication
    final UserCredentials = await AuthenticationRepository.instance
        .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

    // Remove Loader
    TFullScreenLaoder.stopLoading();

    // Redirect
    AuthenticationRepository.instance.screenRedirect();
  } catch (e) {
    TFullScreenLaoder.stopLoading();
    TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
  }

}


// -- Google SignIn Authentication
Future<void> googleSignIn() async {
  try {
    // Start Loading
    TFullScreenLaoder.openLoadingDialog('Logging you in...', TImages.loading);

    // Check Internet Connectivity
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLaoder.stopLoading();
      return;
    }
    // Google Authentication
    final userCredentials = await AuthenticationRepository.instance.signInWithGoogle();

    //save user record
    await userController.saveUserRecord(userCredentials);

    //remove loader
    TFullScreenLaoder.stopLoading();

    //redirect
    AuthenticationRepository.instance.screenRedirect();


  } catch (e) {
    TFullScreenLaoder.stopLoading();
    TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
  }
}




}
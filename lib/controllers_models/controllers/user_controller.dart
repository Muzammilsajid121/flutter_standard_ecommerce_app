import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/repositories/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/models/user_model.dart';
import 'package:flutter_standard_ecommerce_app/repositories/user_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/profile/reautheticate_user_form_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/network_manager.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter_standard_ecommerce_app/utils/popups/loaders_sncakbars.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {

  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());

  Rx<UserModel> user = UserModel.empty().obs;

  final profileNameLoading = false.obs;
  final imageUploadingloader = false.obs;

  final hidePassword = false.obs;
  final verifyPassword = TextEditingController();
  final verifyEmail = TextEditingController();
  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();



  @override
  void onInit(){
    super.onInit();
    fetchUserRecord();
  }

  Future <void> fetchUserRecord() async{
    try{
      profileNameLoading.value=true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);

    }catch(e){
      user(UserModel.empty());
    }finally{
      profileNameLoading.value = false;
    }

  }


  //-- Save user Record from any Registration provider
  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      //refresh user record
      //first update RX user and then check it user record alreadu exist ? if not store new data
      await fetchUserRecord();
      if(user.value.id.isEmpty){
      if (userCredentials != null) {
        // Convert Name to First and Last Name
        final nameParts = UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username = UserModel.generateUsername(userCredentials.user!.displayName ?? '');

        // Map Data
        final user = UserModel(
          id: userCredentials.user!.uid,
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          username: username,
          email: userCredentials.user!.email ?? '',
          phoneNumber: userCredentials.user!.phoneNumber ?? '',
          profilePicture: userCredentials.user!.photoURL ?? '',
        );

        // Save user data
        await userRepository.saveUserRecord(user);


      }
     } 
    }catch (e) {
      TLoaders.warningSnackBar(
        title: 'Data not saved',
        message: 'Something went wrong while saving your information. You can re-save your data in your Profile.',
      );
    }
  }


//-- Delete Account Warning Popup
/// Delete Account Warning
void deleteAccountWarningPopup() {
  Get.defaultDialog(
    backgroundColor:THelperFucntion.isDarkMode(Get.context!)? Colors.black : Colors.white,
    contentPadding: const EdgeInsets.all(TSizes.md),
    title: 'Delete Account',titleStyle: Theme.of(Get.context!).textTheme.bodyLarge,
    middleText: 
        'Are you sure you want to delete your account permanently? This action is not reversible and all of your data will be removed permanently.',
    confirm: ElevatedButton(
      onPressed: () async => deleteUserAccount(),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red, side: const BorderSide(color: Colors.red)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: TSizes.lg),
        child: Text('Delete'),
      ),
    ),
    cancel: OutlinedButton(
      child: const Text('Cancel'),
      onPressed: () => Navigator.of(Get.overlayContext!).pop(),
    ),
  );
}


//-- Delete User Account
void deleteUserAccount() async {
  try {
    TFullScreenLaoder.openLoadingDialog('Processing', TImages.loading);

    // First re-authenticate user
    final auth = AuthenticationRepository.instance;

    //provider is the firebase login servies like email password, google, fb etc
    final provider = auth.authUser!.providerData.map((e) => e.providerId).first;
    if (provider.isNotEmpty) {
      
      // Re Verify Auth Email
      if (provider == 'google.com') {
        await auth.signInWithGoogle();
        await auth.deleteAccount();
        TFullScreenLaoder.stopLoading();
        TLoaders.successSnackBar(title: 'Account Deleted',
        message: 'Your Account and its relevant data deleted Successfully');
        Get.offAll(() => const LoginScreen());
        
        //if user is logged in using email password verify its password and email
      } else if (provider == 'password') {
        TFullScreenLaoder.stopLoading();
        Get.to(() => const ReAuthLoginFormScreen());
      }
    }
  } catch (e) {
    TFullScreenLaoder.stopLoading();
    TLoaders.warningSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}


//-- RE-AUTHENTICATE before deleting
Future<void> reAuthenticateEmailAndPasswordUser() async {
  try {
    TFullScreenLaoder.openLoadingDialog('Processing', TImages.loading);

    // Check Internet
    final isConnected = await NetworkManager.instance.isConnected();
    if (!isConnected) {
      TFullScreenLaoder.stopLoading();
      return;
    }

    if (!reAuthFormKey.currentState!.validate()) {
      TFullScreenLaoder.stopLoading();
      return;
    }

    await AuthenticationRepository.instance.reAuthenticateUserWithEmailAndPassword(
      verifyEmail.text.trim(), verifyPassword.text.trim());
    await AuthenticationRepository.instance.deleteAccount();
    TFullScreenLaoder.stopLoading();
    TLoaders.successSnackBar(title: 'Account Deleted',
      message: 'Your Account and its relevant data deleted Successfully');
    Get.offAll(() => const LoginScreen());
    
  } catch (e) {
    TFullScreenLaoder.stopLoading();
    TLoaders.warningSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}

//-- Upload Profile Image
uploadUserProfilePicture() async {
  try {
    // Take an image
    final image = await ImagePicker().pickImage(
        source: ImageSource.gallery, imageQuality: 70, maxHeight: 512, maxWidth: 512);

    if (image != null) {
      imageUploadingloader.value = true;
      // Upload Image
      final imageUrl = await userRepository.uploadImage('Users/Images/Profile/', image);

      // Update User Image Record
      Map<String, dynamic> json = {'ProfilePicture': imageUrl};
      await userRepository.updateSingleField(json);

      user.value.profilePicture = imageUrl;
      user.refresh(); //getx func

      TLoaders.successSnackBar(title: 'Congratulations', message: 'Your Profile Image has been updated!');
    }
  } catch (e) {
    TLoaders.errorSnackBar(title: 'Oh Snap', message: 'Something went wrong: $e');
  }finally{
    imageUploadingloader.value = false;
  }

}





  
}

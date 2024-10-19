import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_standard_ecommerce_app/repositories/user_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/verify_email_screen.dart';
import 'package:flutter_standard_ecommerce_app/navigation_menu.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find(); //! static getter method
  
  //-- Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  //-- get authenticated user
  User? get authUser => _auth.currentUser;

  // called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  //-- Function to show relevant screen
  screenRedirect() async{
    final user = _auth.currentUser;

    //if user is not null and verified take it to Navigation Menu
    if(user!= null){
      if(user.emailVerified){
        Get.offAll( ()=> NavigationMenu());
      }
      else{
      // else take him to verify screen and display his email in design
      Get.offAll( ()=> VerifyEmailScreen(email: _auth.currentUser?.email,));
    }
    }else{
    //Local Storage
    deviceStorage.writeIfNull('isFirstTime', true);  // write in local storage that this is first time
    // IF first time take to on boarding screen
    deviceStorage.read('isFirstTime') != true?
      Get.offAll( ()=>LoginScreen()) : Get.offAll( ()=> OnBoardingScreen());
    }


  }





//* ---------------------------------- Email & Password sign-in ------------------------------///

//--  [EmailAuthentication] - LogIn or SignIn
Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}

//--  [EmailAuthentication] - REGISTER
Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
  try {
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}


//--  [EmailVerification] - MAIL VERIFICATION
Future<void> sendEmailVerification() async {
  try {
    return await _auth.currentUser?.sendEmailVerification();

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}


//-- [EmailAuthentication] - FORGET PASSWORD
Future<void> sendPasswordResetEmail(String email) async {
  try {
    await _auth.sendPasswordResetEmail(email: email);

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}


//-- [ReAuthenticate] - Re Authenticate User
Future<void> reAuthenticateUserWithEmailAndPassword(String email, String password) async {
  try {
    //create a credential
    AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);

    //reauthenticate
    await _auth.currentUser!.reauthenticateWithCredential(credential);

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}



//* ------------------------------ Federated identity & social sign-in ----------------------------///

//-- [GoogleAuthentication] - GOOGLE
Future<UserCredential> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    //create a new credential
    final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,  );
    
    //once signedin returned the user credentials
    return await _auth.signInWithCredential(credentials);

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    if(kDebugMode){print('something wrong: $e');}
    throw 'Something went wrong. Please try again';
  }
}



/// [FacebookAuthentication] - FACEBOOK


//* ------------------------------ ./end Federated identity & social sign-in ------------------------///



//-- [LogoutUser] - Valid for any authentication.
Future<void> logout() async {
  try {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
    Get.offAll(()=> const LoginScreen());

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}

//-- DELETE USER - Remove user Auth and Firestore Account.
Future<void> deleteAccount() async {
  try {
    await UserRepository.instance.removeUserRecord(_auth.currentUser!.uid);
    await _auth.currentUser?.delete();

  } on FirebaseAuthException catch (e) {
    throw TFirebaseAuthException(e.code).message;
  } on FirebaseException catch (e) {
    throw TFirebaseException(e.code).message;
  } on FormatException catch (_) {
    throw const TFormatException();
  } on PlatformException catch (e) {
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}







}
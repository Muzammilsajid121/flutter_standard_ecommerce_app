
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/user/user_model.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
//!firestore rules should be true

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  //-- function to fetch user details based on user id
    Future<UserModel> fetchUserDetails() async {
    try {
      final _documentSnapshot = await _db.collection('Users').doc(AuthenticationRepository.instance.authUser?.uid).get();
    if(_documentSnapshot.exists){
      return UserModel.fromSnapshot(_documentSnapshot);
    }else{
      return UserModel.empty();
    }

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }

  }



  //--function to update user data in firestore
    Future<void> uodateUserDetails(UserModel updatedUser) async {
    try {
      await _db.collection('Users').doc(updatedUser.id).update(updatedUser.toJson());

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
    
  }


  //--update any fueld in specific user collection
    Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db.collection('Users').doc(AuthenticationRepository.instance.authUser?.uid).update(json);

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
    
  }



  //--function to delete user data from firestore
    Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection('Users').doc(userId).delete();

    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
    
  }



  
}
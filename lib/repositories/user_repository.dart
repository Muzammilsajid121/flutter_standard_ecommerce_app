
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:flutter_standard_ecommerce_app/repositories/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/models/user_model.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
//!firestore rules should be true

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //-- function to save user data 
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


  //--function to upload image to firebase storage and store in firestore db
    Future<String> uploadImage(String path, XFile image) async {
    try {
      final ref = FirebaseStorage.instance.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      //now get the url of uploaded image and store it in firestore db
      final url = await ref.getDownloadURL();
      return url;

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
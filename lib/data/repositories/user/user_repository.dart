
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/user/user_model.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/firebase_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/format_exceptions.dart';
import 'package:flutter_standard_ecommerce_app/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
//!firestore rules should be true

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await db.collection("Users").doc(user.id).set(user.toJson());
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

  //--function to update uder id in firestore

  
}
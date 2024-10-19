import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AbbaController extends GetxController {
  static AbbaController get instance => Get.find();

  // Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // Func
  sendPasswordResetEmail() async {
  }

  
}

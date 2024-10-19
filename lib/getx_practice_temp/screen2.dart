import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/getx_practice_temp/abba_controller.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AbbaController());
    return  Scaffold(
      body: ElevatedButton(
        onPressed: controller.sendPasswordResetEmail(),
        child: Text('Send Email Again')),
    );
  }
}
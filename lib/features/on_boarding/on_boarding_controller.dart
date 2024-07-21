import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/logins/logins_screen.dart';
import 'package:get/get.dart';

class OnbordController extends GetxController {
  static OnbordController get instance => Get.find();

  // variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

//update current index
  void updatePageIndicator(index) => currentPageIndex.value = index;

// jump to specific and selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

// update current index jump to the next page
   void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }


    // update current index jump to the last page
  void skipPage() {
    Get.to(LoginScreen());
  }
  
}
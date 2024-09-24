import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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

  void nextPage() {
    if (currentPageIndex.value < 2) {
      int page = currentPageIndex.value + 1;
      currentPageIndex.value = page; // Update the current page index
      pageController.jumpToPage(page);
    } else {

      final storage = GetStorage();
      //-- if user is in last onboard screen and press next we have to make a local storage that now this is not first time
      storage.write('isFirstTime', false);
      Get.offAll(() => LoginScreen());
    }
  }


// update current index jump to the last page
  void skipPage() {
    Get.to(LoginScreen());
  }
  
}
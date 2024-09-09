import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/device/device_utility.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnbordController.instance;
    // final dark = THelperFucntion.isDarkMode(context);
    return Positioned(
        top: TDeviceUtils.getAppbarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              controller.skipPage();
            },
            child:const  Text("Skip")));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onbordindotnavigation extends StatelessWidget {
  const Onbordindotnavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnbordController.instance;
    final dark = THelperFucntion.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getButtomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
      ),
    );
  }
}
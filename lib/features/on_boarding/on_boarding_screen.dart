import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_widgets/onboarding_dot_navigation.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_widgets/onboarding_nextbutton.dart';
import 'package:flutter_standard_ecommerce_app/features/on_boarding/on_boarding_widgets/onboarding_skip.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnbordController());

    return Scaffold(
        body: Stack(
      children: [

        ///horizontal scrollable pages
        PageView(
          controller: controller.pageController,
          children: const [
            OnBoardingPage(
                image: TImages.onboardingimage3,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingSubtitle1),
            OnBoardingPage(
                image: TImages.onboardingimage2,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingSubtitle2),
            OnBoardingPage(
                image: TImages.onboardingimage4,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingSubtitle3)
          ],
        ),

//Functions calling from widgets folder from onboarding_widgets
        const Skip(),
        // Dot navigation
        const Onbordindotnavigation(),
        // Next button
        const Onbordingnextbutton( ),
        
      ],
      
    ));
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
              image,
              width: THelperFucntion.screenWidth() * 0.95,
              height: THelperFucntion.screenHeight() * 0.6,
              ),

          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          
         const  SizedBox( height: TSizes.defaultSpaceBtwItem, ),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
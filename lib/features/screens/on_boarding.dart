import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:lottie/lottie.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [

        ///horizontal scrollable pages
        PageView(
          children: const [
            OnBoardingScreen2(
                image: TImages.onboardingimage1,
                title: TText.onBoardingTitle1,
                subtitle: TText.onBoardingSubtitle1),
            OnBoardingScreen2(
                image: TImages.onboardingimage2,
                title: TText.onBoardingTitle2,
                subtitle: TText.onBoardingSubtitle2),
            OnBoardingScreen2(
                image: TImages.onboardingimage3,
                title: TText.onBoardingTitle3,
                subtitle: TText.onBoardingSubtitle3)
          ],
        )
      ],
      
    ));
  }
}

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2(
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
              width: THelperFucntion.screenWidth() * 0.8,
              height: THelperFucntion.screenHeight() * 0.6,
              ),

          // Image.asset(image),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          
         const  SizedBox( height: TSizes.defaultSpaceBtwItem, ),

          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          //skip button

          //dot navigation smooth indicator

          //circular button
        ],
      ),
    );
  }
}
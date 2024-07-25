import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
              //Image
              Image.asset(TImages.emailsuccess, width: THelperFucntion.screenWidth()*0.6,
               height: THelperFucntion.screenHeight()*0.3,),
              const SizedBox(height: TSizes.defaultSpaceBtwSection,),
        
        // Title & Subtitle
        Text( TText.yourAccountCreatedTitle, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center, ),
        const SizedBox( height: TSizes.defaultSpaceBtwItem,),
        
        Text(TText.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
         const SizedBox(height: TSizes.defaultSpaceBtwSection, ),
        
        //Continue Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){ Get.to(()=>LoginScreen());}, 
        child: const Text(TText.continues))),
                
            
          ],),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
    
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
        
        //Image
        Image.asset(TImages.emaildeliver,
        width: THelperFucntion.screenWidth()*0.6, height: THelperFucntion.screenHeight()*0.3,),
        const SizedBox(height: TSizes.defaultSpaceBtwSection,),
        
        // Title & Subtitle
        Text( TText.changeYourPasswordTitle, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center, ),
        const SizedBox( height: TSizes.defaultSpaceBtwItem,),
        
        Text( TText.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
        const SizedBox(height: TSizes.defaultSpaceBtwSection,),
        
        //Done Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){},
        child: const Text(TText.done))),
        
         const SizedBox(height: TSizes.defaultSpaceBtwItem,),
        
        //Resend Email Button
        SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: Text(TText.resendEmail))),
        
          
        
        
        
        
        
          ],
        ),
      ),
    ),




    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key,
   required this.image,
   required this.title,
   required this.subtitle,
   required this.onPressed});

final String image, title, subtitle;
final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
              //Image
              Image.asset(image, width: THelperFucntion.screenWidth()*0.6,
               height: THelperFucntion.screenHeight()*0.3,),
              const SizedBox(height: TSizes.defaultSpaceBtwSection,),
        
        // Title & Subtitle
        Text( title, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center, ),
        const SizedBox( height: TSizes.defaultSpaceBtwItem,),
        
        Text(subtitle, style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),     

        //Continue Button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, 
        child: Text(TText.continues))),

                
            
          ],),
      ),
    );
  }
}
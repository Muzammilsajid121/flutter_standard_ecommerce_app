import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
  
  // since this might repeat again and again we can create them in common in styles or you can call 
  //  TSpacingStyle.paddingWithAppbarHeight

          child: Column(
            children: [
              //logo title and subtitle
              Column(
                children: [
                  Image.asset(dark? TImages.lightApplogo: TImages.darkApplogo),
                  Text(TText.loginTitle, style: Theme.of(context).textTheme.titleSmall,),
                  const SizedBox(height: TSizes.sm,)  ,
                  Text(TText.loginsubTitle, style: Theme.of(context).textTheme.bodyMedium,),                
                ],
              ),

              //FORM
              Form( child:
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpaceBtwSection),
                 child: Column(
                  children: [
                 
                    //email
                    TextFormField(
                      decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TText.email,
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwFields),
                    
                    //password
                      TextFormField(
                      decoration:const  InputDecoration(
                      suffixIcon: Icon(Iconsax.eye_slash),
                      labelText: TText.password,
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwFields),
                 
                         //Remember me and forget password
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             //remeberme
                             Checkbox(value: false, onChanged: (value){
                             }),
                             const Text(TText.rememberMe),
                 
                             //forgot password
                             TextButton(onPressed: (){}, child:const  Text(TText.forgetPassword))
                           ],
                         ),
                         const SizedBox(height: TSizes.defaultSpaceBtwSection,),
                 
                         //Signin button
                         ElevatedButton(onPressed: (){}, child: const Text(TText.signIn)),
                         const SizedBox(height: TSizes.defaultSpaceBtwItem,),
                         //create account buttpn
                         OutlinedButton(onPressed: (){}, child: const Text(TText.createAccount)),
                 
                         const SizedBox(height: TSizes.defaultSpaceBtwSection,)
                    
                  ], ),
               )
               ),
               //devider
     Row( mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //put dev in fl;exible if not show
    Divider(color: dark? TColors.darkGrey : TColors.grey, thickness: 0.8, ),
    Text(TText.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
    Divider(color: dark? TColors.darkGrey : TColors.grey, thickness: 0.8, ),
    const SizedBox(height: TSizes.defaultSpaceBtwSection,),
               ],
               ),


    //footer google and facebook icons
    Row(
      children: [
        //GOOGLE
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(TImages.googlelogo),
        ),

          //FB
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(TImages.facebooklogo),
        )
      ],
    )

            ],
        
      ),
    )
    )
    );
  }
}
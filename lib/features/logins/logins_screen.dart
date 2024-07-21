import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/form_devider.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/social_button.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //logo title and subtitle
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(dark? TImages.lightApplogo: TImages.darkApplogo, height: TSizes.productImageSize,),
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
                            Row(
                              children: [
                             //remeberme
                            Checkbox(value: false, onChanged: (value){
                             }),
                             const Text(TText.rememberMe),
                              ],
                            ),

                            Row(
                              children: [
                           //forgot password
                             TextButton(onPressed: (){}, child:const  Text(TText.forgetPassword))
                              ],
                            ),                        
                 
                           ],
                         ),

                         const SizedBox(height: TSizes.defaultSpaceBtwSection,),
                 
                         //Signin button
                         SizedBox( width: double.infinity,
                         child: ElevatedButton(onPressed: (){}, child: const Text(TText.signIn))),
                         const SizedBox(height: TSizes.defaultSpaceBtwItem,),
                         //create account buttpn
                         SizedBox( width: double.infinity,
                         child: OutlinedButton(onPressed: (){}, child: const Text(TText.createAccount))),
                        
                 
                         const SizedBox(height: TSizes.defaultSpaceBtwSection,)
                    
                  ], ),
               )
               ),

    // calling devider from commons widgets
    TFormDevider(deviderText: TText.orSignInWith.capitalize!),

    // calling footer google and facebook icons from common widgets
    TSocialButton(),
  

            ],
        
      ),
    )
    )
    );
  }
}
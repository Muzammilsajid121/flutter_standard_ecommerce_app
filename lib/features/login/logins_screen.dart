import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/form_devider.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/social_button.dart';
import 'package:flutter_standard_ecommerce_app/features/login/login_widgets/login_form.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/signup_screen.dart';
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

    //Calling FORM from login widgets
    LoginForm(),

    // calling devider from commons widgets
    TFormDivider(dividerText: TText.orSignInWith.capitalize!),

    const SizedBox(height: TSizes.defaultSpaceBtwItem,),

    // calling footer google and facebook icons from common widgets
    TSocialButton(),
  

            ],
        
      ),
    )
    )
    );
  }
}
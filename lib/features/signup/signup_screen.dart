import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/form_devider.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/social_button.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/singup_widgets/signup_form.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/singup_widgets/signup_terms_condition.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/verify_email_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isdark = THelperFucntion.isDarkMode(context);

    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      //TITLE
      Text(TText.sigupTitle, style: Theme.of(context).textTheme.titleMedium,),
      const SizedBox(height: TSizes.defaultSpaceBtwSection,),

    // //calling from signup widgets
    SignupForm(),
    SizedBox(height: TSizes.defaultSpaceBtwSection,),

    //calling from signup widgets
    SignupTermsCondition(),

    SizedBox(height: TSizes.defaultSpaceBtwSection,),
    //Create Account Button
    SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){
      Get.to(()=> VerifyEmailScreen); }, child: Text(TText.createAccount))),

      
    SizedBox(height: TSizes.defaultSpaceBtwSection,),
    
    //CALLING DEVIDER AND SOCIAL BUTTONS FROM COMMONS/WIDGETS
    TFormDivider(dividerText: TText.orSignUpWith),
    SizedBox(height: TSizes.defaultSpaceBtwSection,),
    TSocialButton(),


        ],
      ),
       ) 
          ),
        
      
    );
  }
}
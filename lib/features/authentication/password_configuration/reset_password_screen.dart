import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/controllers/forget_password_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/forgot_password_screen.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=> Get.back, icon: const Icon(CupertinoIcons.clear))],
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
        SizedBox(width: double.infinity, child: ElevatedButton(
        onPressed: ()=> Get.offAll( ()=> LoginScreen()),
        child: const Text(TText.done))),
        
         const SizedBox(height: TSizes.defaultSpaceBtwItem,),
        
        //Resend Email Button
        SizedBox(width: double.infinity, child: OutlinedButton(
        onPressed: ()=> ForgetPasswordController.instance.resendPasswordResetEmail(email),
        child: Text(TText.resendEmail))),
        
          
        
        
        
        
        
          ],
        ),
      ),
    ),




    );
  }
}
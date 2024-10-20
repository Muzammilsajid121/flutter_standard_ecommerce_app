import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/controllers/verify_email_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/login/logins_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //hide back arrow
        actions: [
          //delete user data and logout if he want to go back
          IconButton(onPressed: (){ Get.offAll(()=> const LoginScreen()); },
           icon: Icon(CupertinoIcons.clear))
        ],
      ),

body: Padding( padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: SingleChildScrollView(
      child: Column(
      children: [
            //Image
      Image.asset(TImages.emaildeliver,
      width: THelperFucntion.screenWidth()*0.6, height: THelperFucntion.screenHeight()*0.3,),
      const SizedBox(height: TSizes.defaultSpaceBtwSection,),

// Title & Subtitle
Text( TText.confirmEmail, style: Theme.of(context).textTheme.bodyLarge, textAlign: TextAlign.center, ),
const SizedBox( height: TSizes.defaultSpaceBtwItem,),

Text(email?? '', style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
 const SizedBox(height: TSizes.defaultSpaceBtwItem, ),

Text( TText.confirEmailSubTitle,style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center,),
 const SizedBox(height: TSizes.defaultSpaceBtwSection,),

//-- Continue Button
  SizedBox(
    width: double.infinity,
    child: ElevatedButton(
    onPressed: ()=> controller.checkEmailVerificationStatus ,
    child: const Text(TText.continues)
    )),

 const SizedBox(height: TSizes.defaultSpaceBtwItem,),

//-- Resend Email Button
SizedBox(
  width: double.infinity,
  child: OutlinedButton(
  onPressed: ()=> controller.sendEmailVerification,
  child: Text(TText.resendEmail))),

              
            ],),
        ),
      ),
    );
  }
}
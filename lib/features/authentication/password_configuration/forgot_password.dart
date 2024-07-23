import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/reset_password.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      //HEADING
      Text( TText.forgetPasswordTitle, style: Theme.of(context).textTheme.bodyMedium,),
      const SizedBox(height: TSizes.defaultSpaceBtwItem),
      Text( TText.forgetPaswordsubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      const SizedBox(height: TSizes.defaultSpaceBtwSection*2,),
      
      
      //TEXTFIELDS
      TextFormField(decoration: InputDecoration(
        labelText: TText.email, prefixIcon: Icon(Iconsax.direct_right)
      ),),
      const SizedBox(height: TSizes.defaultSpaceBtwSection,),
      
      
      //SUBMIT BUTTON
      SizedBox( width: double.infinity,  child: ElevatedButton(onPressed: (){
      Get.off(()=> ResetPassword()); },
       child: Text(TText.submit)))
      
      
      
      
      
            
          ],
        ),
      ),
    );
  }
}
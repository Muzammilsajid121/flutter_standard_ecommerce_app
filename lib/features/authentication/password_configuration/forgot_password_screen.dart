import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/reset_password_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ForgetPasswordController());

    return  Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(
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
        Form(
          key: controller.forgetPasswordFormKey,
          child: TextFormField(
          controller: controller.email,
          validator: Tvalidator.validateEmail,
          decoration: InputDecoration(
          labelText: TText.email, prefixIcon: Icon(Iconsax.direct_right)
          ),),
        ),
        const SizedBox(height: TSizes.defaultSpaceBtwSection,),
        
        
        //SUBMIT BUTTON
        SizedBox( width: double.infinity,  child: ElevatedButton(
        onPressed: ()=> controller.sendPasswordResetEmail(),
        child: Text(TText.submit)))
             
              
            ],
          ),
        ),
      ),
    );
  }
}

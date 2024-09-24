import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    //-- Instance of Signup controller / Accessing signup controller
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          //first and last name
          Row(
            children: [
             Expanded(
               child: TextFormField(
                controller: controller.firstName,
                validator: (value) => Tvalidator.validateEmptyText('First Name', value),
                expands: false,
                decoration: InputDecoration(
                  labelText: TText.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
               ),
             ),

          SizedBox(width: TSizes.spaceBtwInputFields,),

              Expanded(
               child: TextFormField(
                controller: controller.lastName,
                validator: (value) => Tvalidator.validateEmptyText('Last Name', value),
                expands: false,
                decoration: InputDecoration(
                  labelText: TText.lastName,
                  prefixIcon: Icon(Iconsax.user)
                ),
               ),
             ),
            ],
          ),
  SizedBox(height: TSizes.spaceBtwInputFields,),

   //USERNAME
    TextFormField(
     controller: controller.userName,
     validator: (value) => Tvalidator.validateEmptyText('User Name', value),
     decoration: InputDecoration(
      labelText: TText.username,
      prefixIcon: Icon(Iconsax.user_edit)
               ),
              ),
    SizedBox(height: TSizes.spaceBtwInputFields,),

   //EMAIL
    TextFormField(
     controller: controller.email,
     validator: (value) => Tvalidator.validateEmail(value),
     decoration: InputDecoration(
      labelText: TText.email,
      prefixIcon: Icon(Iconsax.direct)
               ),
              ),
    SizedBox(height: TSizes.spaceBtwInputFields,),

   //PONENUMBER
    TextFormField(
    controller: controller.phoneNumber,
    validator: (value) => Tvalidator.validatPhoneNumber(value),
     decoration: InputDecoration(
      labelText: TText.phoneNo,
      prefixIcon: Icon(Iconsax.call)
               ),
              ),
  
    SizedBox(height: TSizes.spaceBtwInputFields,),
   //PASSWORD
    TextFormField(
      controller: controller.password,
      validator: (value) => Tvalidator.validatePassword(value),
      decoration: InputDecoration(
      labelText: TText.password,
      prefixIcon: Icon(Iconsax.password_check),
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Iconsax.eye_slash))
               ),
              ),
    
    //-- Create Account Button
    SizedBox(width: double.infinity,
    child: ElevatedButton(
      onPressed:() => controller.signup(), 
      child: Text(TText.createAccount))),

        ]
    )
    );




  }
}
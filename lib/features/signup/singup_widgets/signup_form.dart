import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return   Form(child: Column(
        children: [
          //first and last name
          Row(
            children: [
             Expanded(
               child: TextField(
                expands: false,
                decoration: InputDecoration(
                  labelText: TText.firstName,
                  prefixIcon: Icon(Iconsax.user)
                ),
               ),
             ),

          SizedBox(width: TSizes.spaceBtwInputFields,),

              Expanded(
               child: TextField(
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
    TextField(
     decoration: InputDecoration(
      labelText: TText.username,
      prefixIcon: Icon(Iconsax.user_edit)
               ),
              ),
  
    SizedBox(height: TSizes.spaceBtwInputFields,),
   //EMAIL
    TextField(
     decoration: InputDecoration(
      labelText: TText.email,
      prefixIcon: Icon(Iconsax.direct)
               ),
              ),

    SizedBox(height: TSizes.spaceBtwInputFields,),
   //PONENUMBER
    TextField(
     decoration: InputDecoration(
      labelText: TText.phoneNo,
      prefixIcon: Icon(Iconsax.call)
               ),
              ),
  
    SizedBox(height: TSizes.spaceBtwInputFields,),
   //PASSWORD
    TextField(
     decoration: InputDecoration(
      labelText: TText.password,
      prefixIcon: Icon(Iconsax.password_check),
      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Iconsax.eye_slash))
               ),
              ),
        ]
    )
    );




  }
}
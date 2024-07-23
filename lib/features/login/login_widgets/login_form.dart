import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/forgot_password.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/signup_screen.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(
       child:
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpaceBtwSection),
                 child: Column(
                  children: [
                 
                    //email
                    TextFormField(
                      decoration:  InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TText.email,
                      // labelStyle: TextStyle(color: dark? TColors.textWhite: TColors.dark)
                      //fixed in TTextField class no more needed
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    
                    //password
                      TextFormField(
                      decoration:  InputDecoration(
                      suffixIcon: Icon(Iconsax.eye_slash),
                      labelText: TText.password,
                      ),
                    ),


                    
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                 
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
                             TextButton(onPressed: (){Get.to(()=> ForgotPassword());}, child:const  Text(TText.forgetPassword))
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
                         child: OutlinedButton( onPressed: (){
                         Get.to( ()=> const SignupScreen()); },
                         child: const Text(TText.createAccount))),
                        
                 
                         const SizedBox(height: TSizes.defaultSpaceBtwSection,)
                    
                  ], ),
               )
               );


    
  }
}
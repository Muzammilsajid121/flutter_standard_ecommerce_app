import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/password_configuration/forgot_password.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/signup_screen.dart';
import 'package:flutter_standard_ecommerce_app/navigation_menu.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return  Form(
      key: controller.loginFormKey,
       child:
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: TSizes.defaultSpaceBtwSection),
                 child: Column(
                  children: [
                 
                    //-- email
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => Tvalidator.validateEmail(value),
                      decoration:  InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TText.email,
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    
       //-- PASSWORD
    Obx(
     ()=> TextFormField(
        controller: controller.password,
        validator: (value) => Tvalidator.validateEmptyText('password',value),
        obscureText: controller.hidePassword.value,
        decoration: InputDecoration(
        labelText: TText.password,
        prefixIcon: Icon(Iconsax.password_check),
        suffixIcon: IconButton(onPressed: (){
          controller.hidePassword.value = !controller.hidePassword.value;
        }, 
        icon: Icon(controller.hidePassword.value? Iconsax.eye_slash: Iconsax.eye))
                 ),
                ),
    ),

       const SizedBox(height: TSizes.spaceBtwInputFields),
                 
                    //-- Remember me and forget password
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                            Row(
                              children: [
                          //remeberme
                    Obx(
                      ()=> Checkbox(value: controller.rememberMe.value,
                       onChanged: (value)=> controller.rememberMe.value = !controller.rememberMe.value 
                         ),
                            ),
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
                         child: ElevatedButton(onPressed: (){ Get.to(()=>NavigationMenu());},
                         child: const Text(TText.signIn))),
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
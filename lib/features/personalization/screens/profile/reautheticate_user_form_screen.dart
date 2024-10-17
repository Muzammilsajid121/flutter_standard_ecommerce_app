import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/update_name_controller.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLoginFormScreen extends StatelessWidget {
  const ReAuthLoginFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Re-Authenticate User',
         style: Theme.of(context).textTheme.bodyMedium),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
                key: controller.reAuthFormKey,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  //EMAIL
                  TextFormField(
                  controller: controller.verifyEmail,
                  validator:Tvalidator.validateEmail,
                  decoration: const InputDecoration(labelText: TText.email, prefixIcon: Icon(Iconsax.direct_right)),
                ),

                const SizedBox(height: TSizes.spaceBtwInputFields),

                       //-- PASSWORD
    Obx(
     ()=> TextFormField(
        controller: controller.verifyPassword,
        validator: (value) => Tvalidator.validateEmptyText('password',value),
        obscureText: controller.hidePassword.value,
        decoration: InputDecoration(
        labelText: TText.password,
        prefixIcon: Icon(Iconsax.password_check),
        suffixIcon: IconButton(onPressed: ()=>
        controller.hidePassword.value = !controller.hidePassword.value,
        icon: Icon(controller.hidePassword.value? Iconsax.eye_slash: Iconsax.eye))
                 ),
                ),
    ),
   
   const SizedBox(height: TSizes.defaultSpaceBtwSection,),
     //-- Login Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => controller.reAuthenticateEmailAndPasswordUser(), child: const Text('Save')),
          ),   

              ],
            ),
          ),
            ),
          ),
      );
  
}

}

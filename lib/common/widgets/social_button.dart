import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';

//footer google and facebook icons
class TSocialButton extends StatelessWidget {
  const TSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //GOOGLE
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 102, 102, 102).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)
          ),
          child: IconButton(
            onPressed: ()=>controller.googleSignIn(),
            icon: Image.asset(TImages.googlelogo, height: TSizes.iconMd,))
          // Image.asset(TImages.googlelogo, height: 40,),
        ),
        const SizedBox(width: TSizes.defaultSpaceBtwItem,),
    
          //FB
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 102, 102, 102).withOpacity(0.5),
            borderRadius: BorderRadius.circular(20)
          ),
           child: IconButton(
            onPressed: (){},
            icon: Image.asset(TImages.facebooklogo, height: TSizes.iconMd,))
          //  Image.asset(TImages.facebooklogo, height: 42,),
        )
      ],
    );


  }
}
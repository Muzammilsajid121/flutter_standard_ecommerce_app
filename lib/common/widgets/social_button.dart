import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

//footer google and facebook icons
class TSocialButton extends StatelessWidget {
  const TSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //GOOGLE
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(TImages.googlelogo),
        ),
    const SizedBox(width: TSizes.defaultSpaceBtwItem,),
    
          //FB
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Image.asset(TImages.facebooklogo),
        )
      ],
    );


  }
}
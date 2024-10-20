import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/controllers/signup_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

class SignupTermsCondition extends StatelessWidget {
  const SignupTermsCondition({super.key});

  @override
  Widget build(BuildContext context) {
  final isdark = THelperFucntion.isDarkMode(context);
  final controller = SignupController.instance ; //-- using the old controller instance

    return   Row(
      children: [
        //-- checkbox
        Obx( 
          ()=> Checkbox(value: controller.privacyPolicy.value,
           onChanged: (value) {
            controller.privacyPolicy.value = !controller.privacyPolicy.value;
          })),

        // const SizedBox( width: TSizes.defaultSpaceBtwItem, ),

//TEXTSPANS
//concatenation is used to give space b/w texts in TextSpan
  Text.rich( TextSpan(
   children: [

//I agree to privacy policy
TextSpan(text:'${ TText. iAgreeTo} ', style: Theme.of(context).textTheme.displaySmall),
TextSpan(text: '${ TText. privacyPolicy} ', style: Theme.of(context).textTheme.bodySmall!.apply(
  color: isdark ? TColors.white : TColors.primary,
  decoration: TextDecoration.underline, decorationColor: isdark ? TColors.white : TColors.primary,
          )),

// and terms of use
TextSpan( text: ' and ', style: Theme.of(context).textTheme.displaySmall),
TextSpan(text: TText.termsOfUse, style: Theme.of(context).textTheme.bodySmall!.apply(
  color: isdark ? TColors.white : TColors.primary,decoration: TextDecoration.underline,
   decorationColor: isdark ? TColors.white : TColors.primary,
       )),
        ])
        ),
      ],
    );



  }
}
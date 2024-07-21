import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TFormDevider extends StatelessWidget {
  final String deviderText;
  const TFormDevider({super.key, required this.deviderText});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
Divider(color: dark? TColors.darkGrey : TColors.grey, thickness: 0.8, indent: 60, endIndent: 5, ),
Text( deviderText, style: Theme.of(context).textTheme.labelMedium,),
Flexible (child: Divider(color: dark? TColors.darkGrey : TColors.grey, thickness: 0.8,  indent: 60, endIndent: 5,)),
      ],
    );
    
   
  }
}
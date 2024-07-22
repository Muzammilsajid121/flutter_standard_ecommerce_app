import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TFormDivider extends StatelessWidget {
  final String dividerText;
  const TFormDivider({super.key, required this.dividerText});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.8,
            indent: 10, //starting
            endIndent: 10, //edning
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.8,
            indent: 10,
            // endIndent: 4,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      BackgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      //! Coupon TextField and Button
      child: Row(
        children: [
         Flexible(
          child: 
          // Coupon TextField 
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Have a promo code? Enter here',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          )
          ),
         //Button
         SizedBox(width:80,
          child: ElevatedButton(onPressed: (){}, child: Text('Apply'))) ,
        ],
      ),
    );
  }
}

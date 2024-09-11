import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
    //-- Cart + -
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
        TIconButton(icon: Iconsax.minus,backgroundcolor: TColors.darkGrey, width: 40,height: 40, ),
      
         const SizedBox(width: TSizes.defaultSpaceBtwItem,),
         Text('2', style: Theme.of(context).textTheme.bodyLarge,),
         const SizedBox(width: TSizes.defaultSpaceBtwItem,),

              TIconButton(
                icon: Iconsax.add,backgroundcolor: TColors.black, width: 40,height: 40,
                ),
            ],
          ),
          //-- Add to cart button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black
            ),
            onPressed: (){},
            child: Text('Add to Cart'))
        ],
      ),
    );
  }
}

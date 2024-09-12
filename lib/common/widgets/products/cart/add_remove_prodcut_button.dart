import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';



class TAddRemoveProductButton extends StatelessWidget {
  const TAddRemoveProductButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TIconButton(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFucntion.isDarkMode(context) ? TColors.white : TColors.black,
          backgroundcolor: THelperFucntion.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
    
    const SizedBox(width: TSizes.defaultSpaceBtwItem),
    Text('2', style: Theme.of(context).textTheme.titleSmall),
    const SizedBox(width: TSizes.defaultSpaceBtwItem),
    
    TIconButton(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: TColors.white,
          backgroundcolor: TColors.primary,
        ),
    
      ],
    );
  }
}

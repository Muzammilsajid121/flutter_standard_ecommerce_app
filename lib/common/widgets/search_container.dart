import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer( {super.key,
      this.icon,
      this.showbackground = true,
      this.showborder = true,
      required this.text});
      
  final String text;
  final IconData? icon;
  final bool showbackground, showborder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(),
          padding: EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
color: showbackground ? dark ? TColors.dark: TColors.white: Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              border: showborder ? Border.all(color: TColors.grey) : null),
          child: Row(
            children: [
              Icon(
                Iconsax.search_normal,
                color: TColors.darkGrey,
              ),
              const SizedBox(
                width: TSizes.defaultSpaceBtwItem,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ));
  }
}

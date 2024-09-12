import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectAddress});

  final bool selectAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return TRoundedContainer(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      width: double.infinity,
      showBorder: true,
      BackgroundColor:selectAddress ? TColors.primary.withOpacity(0.5) : Colors.transparent,
      bordercolor: selectAddress? Colors.transparent
       : dark ? TColors.darkGrey : TColors.grey,
      margin: EdgeInsets.only(bottom: TSizes.defaultSpaceBtwItem),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectAddress ? Iconsax.tick_circle5 : null,
              color: selectAddress ? TColors.darkGrey : TColors.light,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Muzammil',  maxLines: 1, overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox( height: TSizes.sm / 2,),
              Text('(+123)456 7890',   maxLines: 1, overflow: TextOverflow.ellipsis,),
              SizedBox(height: TSizes.sm / 2,),
              Text('832983 Timay coves, South LInes Main,234 USA',  softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
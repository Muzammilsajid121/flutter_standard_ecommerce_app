import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TBrandCards extends StatelessWidget {
  const TBrandCards({ super.key,

    this.ontap,
    required this.showborder,
  });
  
  final bool showborder;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: TRoundedContainer(
          padding: EdgeInsets.all(TSizes.sm),
          BackgroundColor: Colors.transparent,
          showBorder: showborder,
          bordercolor: Colors.grey,

          //padding:EdgeInsets.all(TSizes.md) ,
          // backgroundColor: Colors.transparent,
          child: Row(
            children: [
              //icon
              Flexible(
                  child: TCicluarImage(
                image: TImages.cloth,
                isnetworkimage: false,
                backgroundcolor: Colors.transparent,
                overlaycolor: THelperFucntion.isDarkMode(context)
                    ? TColors.white
                    : TColors.black,
              )),
              SizedBox(height: TSizes.defaultSpaceBtwSection / 2),

              /// Text
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 Product',
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
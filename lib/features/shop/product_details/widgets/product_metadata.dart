import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_price_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFucntion.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              BackgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            
            const SizedBox(width: TSizes.defaultSpaceBtwItem),

            /// Price
            const TProductPriceText(price: '250', isLarge: false, lineThrough: true,),
            // Text('\$250', style: Theme.of(context).textTheme.bodyMedium!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.defaultSpaceBtwItem),
            const TProductPriceText(price: '175', isLarge: true),
          ], 
        ),

        const SizedBox(height: TSizes.defaultSpaceBtwItem / 1.5),
      


     //* Title
     TProductTitleText(title: 'Green Nike Sports Shirt'),
     const SizedBox(height: TSizes.defaultSpaceBtwItem / 1.5),

    //* Stock Status
    Row(
     children: [
       TProductTitleText(title: 'Status'),
       const SizedBox(width: TSizes.defaultSpaceBtwItem),
       Text('In Stock', style: Theme.of(context).textTheme.titleSmall),
  ],
), 

const SizedBox(height: TSizes.defaultSpaceBtwItem / 1.5),

/// Brand
Row(
  children: [
    TCicluarImage(
      image: TImages.clothes,  //! chck it might not load
      width: 32,
      height: 32,
      overlaycolor: darkMode ? TColors.white : TColors.black,
    ),

     TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium),
  ],
)
      ]
      );

}
}
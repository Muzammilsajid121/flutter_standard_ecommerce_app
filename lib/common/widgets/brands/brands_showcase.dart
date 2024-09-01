import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase( {super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      bordercolor: TColors.darkerGrey,
      BackgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpaceBtwItem),
      child: Column(
        children: [
          // Brand with Products Count
          const TBrandCards(showborder: false),
          SizedBox(height: TSizes.defaultSpaceBtwItem,),


          // Brand Top 3 Product Images
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: TRoundedContainer(
        height: 196,
        padding: const EdgeInsets.all(TSizes.md),
        margin: const EdgeInsets.only(right: TSizes.sm),
        bordercolor: !THelperFucntion.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}

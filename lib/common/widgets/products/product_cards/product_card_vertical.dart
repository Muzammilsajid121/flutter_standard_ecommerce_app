import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFucntion.isDarkMode(context);

    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TSHadowStyle.veticalProductShaddow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark? TColors.grey : TColors.white
      ),

      child: Column(
        children: [
          //Thumbnail, Wishlist button & Discount tag
          TCircularContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            backgrounColor: dark? TColors.dark : TColors.light,

            child: Stack(
              children: [
                //THUMBNAIL IMAGE
                TRoundedpromoimage(imageUrl: TImages.productimage1),


                //Sale Tag
                TCircularContainer(
                  radius: TSizes.sm,
                  backgrounColor: TColors.secondary.withOpacity(0.6),
                  padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                  child: Text('25%' ,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.black),),
                )

              ],
            ),

          )





          //Product details


        ],
      ),
    );
  }
}
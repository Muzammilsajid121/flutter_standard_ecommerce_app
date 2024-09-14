import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_price_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/product_details.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);

    return GestureDetector(
      // -- Navigate to product detail screen
      onTap: ()=> Get.to( ()=> const PrdouctDetail()),



      child: Container(
        width: 310,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TSHadowStyle.veticalProductShaddow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkGrey : TColors.white),
            
        child: Row(
          children: [
            //Thumbnail, Wishlist button & Discount tag
            TRoundedContainer(
              height: 120,
              //  width: double.infinity,
              padding: EdgeInsets.all(TSizes.sm),
              BackgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  //THUMBNAIL  IMAGE
 SizedBox(height: 120, width: 120,
  child: TRoundedpromoimage(imageUrl: TImages.productimage3,
   applyImageRadius: true, width: double.infinity,)),
 const SizedBox(height: TSizes.defaultSpaceBtwSection,),

  //Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      BackgroundColor: TColors.secondary.withOpacity(0.6),
                      padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!
                       .copyWith(color: TColors.black),
                      ),
                    ),
                  ),

                  //Favourite icon button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: TIconButton( icon: Iconsax.heart5, color: Colors.red,)
                      ),


            //Product Details
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                    TProductTitleText(title: 'Green Nike Air Shoes'),
                    const SizedBox(height: TSizes.defaultSpaceBtwItem / 3,),
                    //brand title with verified icon
                    TBrandTitleWithVerifiedIcon(title: 'Nikee',),
                      ],
                    ),

     Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
     //-- pricing
     Flexible(child: TProductPriceText(price: '256.0')), //used flexible to avoid overflow
        //-- add to cart
     Container(
      decoration: const BoxDecoration(
        color: TColors.dark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusMd),
          bottomRight: Radius.circular(TSizes.productImageRadius),
        ),
      ),

      child: const SizedBox( width: TSizes.iconLg * 1, height: TSizes.iconLg * 1,
        child: Center(
          child: Icon( Iconsax.add, color: TColors.white,),
        ),
      ),
    ),


      ],
     ) 


                      
                  ],
                ),
              ),
            ),















          ],
        ),
              ),
       ]
        )
        )
    );
  }
}

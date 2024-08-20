import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/styles/shadows.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFucntion.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
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
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              BackgroundColor: dark? TColors.dark : TColors.light,
      
              child: Stack(
                children: [
                  //THUMBNAIL IMAGE
                  TRoundedpromoimage(imageUrl: TImages.productimage3),
      
      
                  //Sale Tag
                  Positioned(
                    top:12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      BackgroundColor: TColors.secondary.withOpacity(0.6),
                      padding: EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%' ,style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.black),),
                    ),
                  ),
       
      //Favourite icon button
      Positioned( top: 0, right: 0,
      child: TIconButton(icon: Iconsax.heart5, color: Colors.red,)),
      const SizedBox(height: TSizes.defaultSpaceBtwItem/2,),


   

      
      ],
        ),),
        
         //Product Details
      Padding(
        padding: EdgeInsets.only(left: TSizes.sm),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TProductTitleText(title: 'Green Nike Air Shoes'),
        const SizedBox(height: TSizes.defaultSpaceBtwItem/2,),

   //brand title with verified icon
        Row(
          children: [
          Text('Nike', overflow: TextOverflow.ellipsis, maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,),
          const SizedBox(width: TSizes.xs),
          const Icon(Iconsax.verify5,color: TColors.primary, size: TSizes.iconxs,)

        ],
        ),

        //price with add icon cart
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    /// Price
    Text(
      '\$35.5',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.headlineMedium,
    ),

    Container(
      decoration: const BoxDecoration(
        color: TColors.dark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusMd),
          bottomRight: Radius.circular(TSizes.productImageRadius),
        ),
      ),
      child: const SizedBox(
        width: TSizes.iconLg * 1.2,
        height: TSizes.iconLg * 1.2,
        child: Center(
          child: Icon(Iconsax.add, color: TColors.white),
        ),
      ),
    )
  ],
)
      
      
      
      
                ],
              ),
      
            )
      
      
      
      
      
      
          ],
        ),
      ),
    );
  }
}


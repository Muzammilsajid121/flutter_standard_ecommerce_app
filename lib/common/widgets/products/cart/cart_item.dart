import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';




class TCartItem extends StatelessWidget {
  const TCartItem({ super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //-- Image
        TRoundedpromoimage(
          imageUrl: TImages.productimage5,
          width: 60,
          height: 60,
          padding:  EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFucntion.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
        ),
        const SizedBox(width: TSizes.defaultSpaceBtwItem,),
    
      //-- Title , Prize and Size
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TBrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(child: TProductTitleText(title: 'Black Sports Shoes', maximumlines: 1,)),
            
            //--- Attributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Green     ', style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: 'Size:  ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Uk 08:', style: Theme.of(context).textTheme.bodyLarge),
        
                ]
              )
            )
        
          ],
        ),
      )
    
    
      ],
    );
  }
}

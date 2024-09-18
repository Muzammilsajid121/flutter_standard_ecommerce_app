import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_clippper_widget.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({super.key, });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return TCurveEdgeWidget(
      child: Container(
      color: dark ? TColors.darkGrey : TColors.light,
      child: Stack(
        children: [
    
          //! Main Large Image
          SizedBox(
              height: 400,
              child: Padding(
                  padding:
                      EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Image.asset(TImages.productimage5))),
    
          // ! Image Slider
          // Image Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                separatorBuilder: (_, __) =>
                    SizedBox(width: TSizes.defaultSpaceBtwItem),
                itemBuilder: (_, index) => TRoundedpromoimage(
                  width: 80,
                  backgroundColor: dark ? TColors.dark : TColors.white,
                  border: Border.all(color: TColors.primary),
                  padding: const EdgeInsets.all(TSizes.sm),
                  imageUrl: TImages.productimage3,
                ),
              ),
            ),
          ),
    
          // AppBar Icons
          const TAppBar(
            showbackarrow: true,
            actions: [
              TIconButton(icon: Iconsax.heart5, color: Colors.red)
            ],
          ),
    
        ],
      ),
      
    ));
  }
}

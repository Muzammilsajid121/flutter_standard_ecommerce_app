import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/product_metadata.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/rating_share.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class PrdouctDetail extends StatelessWidget {
  const PrdouctDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //* 1-product image slider
            TProductImageSlider(),
  
            //* 2-product details
            Padding(
              padding: const EdgeInsets.only(
               right: TSizes.defaultSpace, left:TSizes.defaultSpace,bottom: TSizes.defaultSpace, ),
              child: Column(
                children: [
                  //* Rating and share button
                  TRatingAndShare(),
                  
                  //* price title stack and brand
                  TProductMetaData(),

                  //* attributes
                  //* checkout button
                  //* description
                  //* reviews
                  
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}

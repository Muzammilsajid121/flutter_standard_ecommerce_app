import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/bottom_add_to_cart.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/product_attributes.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/product_detail_image_slider.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/product_metadata.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_details/widgets/rating_share.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_reviews/product_reviews.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class PrdouctDetail extends StatelessWidget {
  const PrdouctDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFucntion.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
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
                   SizedBox(height: TSizes.defaultSpaceBtwItem,),

                  //* attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.defaultSpaceBtwItem,),


                  //* checkout button
                  SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  SizedBox(height: TSizes.defaultSpaceBtwSection,),

                  //* description
                  TSectionHeading(title: 'Description'),
                  SizedBox(height: TSizes.defaultSpaceBtwItem,),

                  ReadMoreText(
                  'This is a product which has large description. This description is handled by ReadMore package. It can handle large texts.',
                  trimLines: 2, trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText: 'Show Less',
                  moreStyle: TextStyle( fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
                  ),

                  //* reviews
                  const Divider(),
                  SizedBox(height: TSizes.defaultSpaceBtwItem,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews (199)', showActionButton: false,),
    
                         IconButton(icon: Icon(Icons.arrow_circle_right_outlined),
                         onPressed: (){ Get.to( ()=> ProductReviewsScreen());
                         },),
                    ],
                  ),
                  SizedBox(height: TSizes.defaultSpaceBtwItem,),
                  

                  
                ],
              ),
            )



          ],
        ),
      ),
    );
  }
}

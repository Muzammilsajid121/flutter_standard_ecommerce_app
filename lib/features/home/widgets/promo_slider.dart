import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/controllers_models/controllers/home_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:get/get.dart';

import '../../../utils/constants/sizes.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController()); //instance to used home controller
    return Column(
      children: [
       CarouselSlider(
         options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, reason) => controller.updatePageIndicator(index),
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2)
        ),
        items: [
          TRoundedpromoimage(imageUrl: TImages.promobannerone,),
          TRoundedpromoimage(imageUrl: TImages.promobannerthree,),
          TRoundedpromoimage(imageUrl: TImages.promobannertwo,),
          TRoundedpromoimage(imageUrl: TImages.promobannerfour,),
          TRoundedpromoimage(imageUrl: TImages.promobannerfive,),
        ],
        ),
    
        const SizedBox(height: TSizes.defaultSpaceBtwItem,),
    
        Obx( ()=>
           Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i=0; i<=4; i++) TCircularContainer( width: 12,height: 3, margin: EdgeInsets.only(right: 6),
               backgrounColor: controller.carouselCurrentIndex==i? Colors.green : Colors.grey,)
          ],
               ),
        )
        ]);
  }
}

import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/home_appbar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/search_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/home/widgets/home_categories.dart';
import 'package:flutter_standard_ecommerce_app/features/home/widgets/promo_slider.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
     //Header -- video 21
      TPrimaryHeaderContainer(
        child: Column(
          children: [
            //calling appbar
            THomeAppbar(),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //searchbar
            TSearchContainer(text: TText.searchInStore,),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //categories
            Padding(padding: const EdgeInsets.only(left: TSizes.defaultSpace),
            child: Column(
                children: [

        //Scrollable Categories
        TSectionHeading(title: 'Popular Categories',textColor: TColors.white, showActionButton: false,),
        const SizedBox(height: TSizes.defaultSpaceBtwItem,),
        THomeCategories(),


                ],
              ),
            )
              ],
            )
            ),
    
    //body- Promo banner slider  video 15 : TRoundedpromoimage is in common/images
    Padding( padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
       TPromoSlider(),   // inside home/widgets
       const SizedBox(height: TSizes.defaultSpaceBtwSection,),
       
      //popular product vertical card video 16
      TGridLayout(itemcount: 6, itembuilder: (_, index) =>const TProductCardVertical() ),

       
       
       ] 
    )
        
      )




          ],
        ),
      ),
    );
  }
}


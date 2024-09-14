import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_round_promo_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Sports'), 
        showbackarrow: true,
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              const TRoundedpromoimage(
                width: double.infinity, 
                imageUrl: TImages.promobannerfour, 
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.defaultSpaceBtwSection),
              
              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(
                    title: 'Sports shirts', 
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.defaultSpaceBtwItem / 2),

                  ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width:TSizes.defaultSpaceBtwItem),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const TProductCardHorizontal(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

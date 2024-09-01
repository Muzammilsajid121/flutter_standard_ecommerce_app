import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/brands/brands_showcase.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics(),
      children: [

      Padding(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [

          //BRANDS
          TBrandShowcase(images: [TImages.productimage1, TImages.productimage2, TImages.productimage3] ),
          SizedBox(height: TSizes.defaultSpaceBtwItem,),
      
          //PRODUCTS
          TSectionHeading(title: 'You Might Like', onPressed: () {},),
          SizedBox(height: TSizes.defaultSpaceBtwItem,),

          TGridLayout(itemcount: 4, itembuilder: (_, index)=> const TProductCardVertical()),
          SizedBox(height: TSizes.defaultSpaceBtwSection,),
        ],
      ),
      
    
      ),
      ],
    );
  }
}
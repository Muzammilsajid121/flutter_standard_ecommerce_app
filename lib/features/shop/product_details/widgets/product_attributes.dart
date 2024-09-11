import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_price_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark =  THelperFucntion.isDarkMode(context);
    return Column(
      children: [
    //-- Selected Attribute Pricing & Description
    TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      BackgroundColor: dark ? TColors.darkerGrey : TColors.grey,
      child: Column(
        children: [
          //* Title, Price and Stock Status
          Row(
            children: [
              const TSectionHeading(title: 'Variation', showActionButton: false),
              const SizedBox(width: TSizes.defaultSpaceBtwItem),
           
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TProductTitleText(title: 'Price : ', smallsize: true),
                  SizedBox(width: TSizes.defaultSpaceBtwItem),

                  //* Actual Price
                  const TProductPriceText(price: '25', lineThrough: true,),
                  const SizedBox(width: TSizes.defaultSpaceBtwItem,),
                  //* Sale Price
                  const TProductPriceText(price: '20', isLarge: true,),
                ],
              ),

                 //* Stock
                 Row(
                  children: [
                    TProductTitleText(title: 'Stock:', smallsize: true,),
                    Text('In Stock', style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                 ),  
            ],
          ),
        ],
      ),

              //* Variation Description
                const SizedBox(height: TSizes.defaultSpaceBtwItem,),
                TProductTitleText(
                title: 'This is the description of the product and it can go upto max 4 lines',
                smallsize: true, maximumlines: 4,)


      ]
    ),
    ),

    const SizedBox(height: TSizes.defaultSpaceBtwItem),

    //* Attributes
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const TSectionHeading(title: 'Colors', showActionButton: false),
    const SizedBox(height: TSizes.defaultSpaceBtwItem / 2),
    //-- wrap widget wrap it and give equal size and if the item exceeds take it to next line
    Wrap(
      spacing: 8,
      children: [
        TChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
        TChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'Purple', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'Indigo', selected: false, onSelected: (value) {}),

      ],
    ),
  ],
), 

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const TSectionHeading(title: 'Size', showActionButton: false),
    const SizedBox(height: TSizes.defaultSpaceBtwItem / 2),
    Wrap(
      spacing: 8,
      children: [
        TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
        TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'EU 34', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
        TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
      ],
    ), 
  ],
), 


  ],
   
      
);




  }
}
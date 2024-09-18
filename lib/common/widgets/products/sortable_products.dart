import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({super.key,});
  @override

  Widget build(BuildContext context) {
    // final THelperFucntion.isDarkMode;
    return Column(
      children: [
        //-- Dropdown
        DropdownButtonFormField(
          // --! change dropdown color
          dropdownColor: Colors.grey,
          style: Theme.of(context).textTheme.bodyMedium,
          menuMaxHeight: 230,
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort),
          ),
          onChanged: (value) {},
          items: [
            'Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity'
          ]
          .map((option) => DropdownMenuItem(
            value: option, 
            child: Text(option),
          )) .toList(),
        ),
        const SizedBox(height: TSizes.defaultSpaceBtwSection),
    
        //-- Products
        TGridLayout(
          itemcount: 6,
          itembuilder: (_, index) => const TProductCardVertical(),
        ),
      ],
    );
  }
}

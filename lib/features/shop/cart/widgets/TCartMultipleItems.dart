import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/add_remove_prodcut_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_price_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TCartMultipleItems extends StatelessWidget {
  const TCartMultipleItems({
    super.key, 
    this.showAddRemoveButtons=true,
  });

  final showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(height: TSizes.defaultSpaceBtwSection),
      itemBuilder: (_, index) => Column(
        children: [
          //-- From commons/cart
          TCartItem(),
          if(showAddRemoveButtons) const SizedBox(height: TSizes.defaultSpaceBtwItem,),
          
    if(showAddRemoveButtons) Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     Row(
       children: [
         const SizedBox(width: 70),
         //-- Add Remove Buttons From commons/cart
         TAddRemoveProductButton(),               
       ],
     ),  
     TProductPriceText(price: '256')
          
    ],
      ),
           
        ],
      ),
    );
  }
}

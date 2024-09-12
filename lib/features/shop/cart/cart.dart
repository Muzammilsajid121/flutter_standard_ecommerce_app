import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/add_remove_prodcut_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_price_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showbackarrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.defaultSpaceBtwSection),
          itemBuilder: (_, index) => Column(
            children: [
              //-- From commons/cart
              TCartItem(),
              const SizedBox(height: TSizes.defaultSpaceBtwItem,),
      
      Row(
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
        ),
      ),
      bottomNavigationBar: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
       child: ElevatedButton(child: Text('Checkout \$256'), onPressed: (){},),
      )
    );
  }
}

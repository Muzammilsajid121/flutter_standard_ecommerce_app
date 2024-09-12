import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/cart/widgets/TCartMultipleItems.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showbackarrow: true, title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        //* Items in Cart from features/cart/widgets
        child: TCartMultipleItems(),
      ),
      //--checkout button
      bottomNavigationBar: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
       child: ElevatedButton(child: Text('Checkout \$256'), onPressed: (){},),
      )
    );
  }
}

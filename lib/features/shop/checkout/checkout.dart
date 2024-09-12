
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/cart/widgets/TCartMultipleItems.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(showbackarrow: true, title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //* Items in Cart From Features/Cart/widgets
              const TCartMultipleItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.defaultSpaceBtwSection),

              //-- Coupon TextField
              TCouponCode(dark: dark),
              const SizedBox(height: TSizes.defaultSpaceBtwSection),
              
            ],
          ),
        ),
      ),
    );
  }
}

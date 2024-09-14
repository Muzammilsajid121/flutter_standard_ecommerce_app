
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/cart/coupon_widget.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/cart/widgets/TCartMultipleItems.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/checkout/widgets/billing_adress_section.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/checkout/widgets/billing_amount_section.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/checkout/widgets/billing_payment_section.dart';
import 'package:flutter_standard_ecommerce_app/features/signup/success_screen.dart';
import 'package:flutter_standard_ecommerce_app/navigation_menu.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';

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
              
              //-- Billing Section
        TRoundedContainer(
         showBorder: true,
         padding: const EdgeInsets.all(TSizes.md),
         BackgroundColor: dark ? TColors.black : TColors.white,
         child: const Column(
          children: [

      /// Pricing
      TBillingAmountSection(),
      SizedBox(height: TSizes.defaultSpaceBtwItem),

      /// Divider
      Divider(color: TColors.softGrey,),
      SizedBox(height: TSizes.defaultSpaceBtwItem),

      /// Payment Methods
      TBillingPaymentSection(),
      SizedBox(height: TSizes.defaultSpaceBtwItem),

      /// Address
      TBillingAddressSection(),
     
    ],
  ),
)

              
            ],
          ),
        ),
      ),

      //--checkout button
      bottomNavigationBar: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
       child: ElevatedButton(child: Text('Checkout \$256'),
        onPressed: (){ Get.to( ()=>SuccessScreen(
          image: TImages.success,
          title: 'Payment Sucess',
          subtitle: 'Your item will be delivered soon',
          onPressed: () => Get.offAll( ()=>NavigationMenu()),
          
        ));},),
      )
    );
  }
}

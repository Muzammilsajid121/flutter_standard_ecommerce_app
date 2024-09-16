
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/sortable_products.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(title: Text('Nike')), 
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Detail
              TBrandCards(showborder: true),
              SizedBox(height: TSizes.defaultSpaceBtwSection),

              /// Sortable Products
              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

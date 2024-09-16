
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/brand/brand_products.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Brand'), 
        showbackarrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              const TSectionHeading(
                title: 'Brands', 
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.defaultSpaceBtwItem),

              /// Brands
              TGridLayout(
                itemcount: 10,
                mainAxisExtent: 80,
                itembuilder: (context, index) => TBrandCards(
                  showborder: true,
                  ontap: () => Get.to(() => const BrandProducts()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

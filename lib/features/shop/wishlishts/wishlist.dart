import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/icons/icon_button.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_standard_ecommerce_app/features/home/home.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showbackarrow: false,
        title: Text(
          'wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TIconButton(
            icon: Iconsax.add,
            onpressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      
      body: Column(
        children: [
          TGridLayout(
              itemcount: 4, itembuilder: (_, index) => TProductCardVertical())
        ],
      ),
    );
  }
}
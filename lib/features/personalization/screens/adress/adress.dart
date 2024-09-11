import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/adress/widgets/add_new_adress.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/adress/widgets/single_adress.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreeen extends StatelessWidget {
  const UserAddressScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: TColors.primary,
          onPressed: () => Get.to(() => AddNewAddressScreen()),
          child: Icon(
            Iconsax.add,
            color: TColors.white,
          ),
        ),
        appBar: TAppBar(
          showbackarrow: true,
          title: Text(
            'Address',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                TSingleAddress(selectAddress: true),
                TSingleAddress(selectAddress: false),
              ],
            ),
          ),
        ));
  }
}
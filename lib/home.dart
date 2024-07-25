import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/cart_counter_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/home_appbar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/search_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
     //Header -- video 21
      TPrimaryHeaderContainer(
        child: Column(
          children: [
            //calling appbar
            THomeAppbar(),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //searchbar
            TSearchContainer(text: TText.searchInStore,),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //categories
            Padding(
              padding: const EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: 'Popular Categories', showActionButton: false,),
                ],
              ),
            )



              ],
            )),
          ],
        ),
      ),
    );
  }
}



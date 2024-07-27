import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/home_appbar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image_text/horizontal_image_text.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/search_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/home/widgets/home_categories.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
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

            //Heading
        TSectionHeading(title: 'Popular Categories',textColor: TColors.white, showActionButton: false,),
         const SizedBox(height: TSizes.defaultSpaceBtwItem,),

             //Scrollable Categories
                 THomeCategories(),


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


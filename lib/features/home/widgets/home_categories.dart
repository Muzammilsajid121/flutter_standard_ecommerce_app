import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image_text/horizontal_image_text.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/sub_category/sub_category.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return THorizontalImageTextScroll(
              image: TImages.productimage1,
              title: 'Shoes',
              OnTap: ()=> Get.to( ()=> SubCategoriesScreen()),
            );
          }),
    );
  }
}

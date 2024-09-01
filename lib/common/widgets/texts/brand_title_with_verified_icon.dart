import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  TBrandTitleWithVerifiedIcon({super.key,
  
      this.brandTextSize = TextSizes.small,
      this.iconcolor,
      this.maxline = 1,
      this.textAlign,
      this.textcolor,
      required this.title
      });

  final String title;
  final int maxline;
  final Color? textcolor, iconcolor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;  //come from enum in utils/const

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
                title: title,
                color: textcolor,
                maxline: maxline,
                textalign: textAlign,
                brandTextSize: brandTextSize)),
        SizedBox(
          width: TSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconcolor,
          size: TSizes.xs,
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TBrandTitleText extends StatelessWidget {
  TBrandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxline = 1,
    this.brandtextSizes = TextSizes.small,
    this.textalign, required TextSizes brandTextSize,
  });
  final Color? color;
  final String title;
  final int maxline;
  final TextAlign? textalign;
  final TextSizes brandtextSizes;
  // final TSizes brandtextSizes;


  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textalign,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,

        // check which  brand size is required and set that style
        style: brandtextSizes == TSizes.sm
            ? Theme.of(context).textTheme.bodyMedium!.apply(color: color)
            : brandtextSizes == TSizes.md
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandtextSizes == TSizes.lg
                    ? Theme.of(context).textTheme .titleLarge!.apply(color: color)
                    //none of the above return this ⏬
                    : Theme.of(context) .textTheme.bodyMedium!.apply(color: color));
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:flutter_svg/svg.dart';

class THorizontalImageTextScroll extends StatelessWidget {
  const THorizontalImageTextScroll(
      {super.key,
      required this.image,
      required this.title,
      this.backgroundColor = TColors.white,
      this.textColor = TColors.white,
      required this.OnTap});

  final String image, title;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() OnTap;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.defaultSpaceBtwItem),
        child: Column(
          children: [
            //circular icon
            Container(
              padding: EdgeInsets.all(TSizes.sm),
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                  color:
                      backgroundColor ?? (dark ? TColors.black : TColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image.asset(
                  image,height: 40,width: 40,
                  // color: dark ? TColors.black : TColors.white,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(
              height: TSizes.defaultSpaceBtwItem / 2,
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: textColor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

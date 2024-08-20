import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

//Used as favrt icon button in home screen //video 16
class TIconButton extends StatelessWidget {
  const TIconButton({ super.key,

      required this.icon,
      // this.borderradius = 44,
      this.color,
      this.height,
      this.onpressed,
      this.size = TSizes.lg,
      this.backgroundcolor,
      this.width});

  final IconData icon;
  // final double borderradius;
  final Color? color;
  final double? width, height, size;
  final VoidCallback? onpressed;
  final Color? backgroundcolor;

  @override
  Widget build(BuildContext context) {
    bool dark = THelperFucntion.isDarkMode(context);

    return Container(
      height: height, width: width,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(borderradius),
        // color: backgroundcolor != null ? backgroundcolor :dark
        //         ? TColors.black.withOpacity(0.9)
        //         : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
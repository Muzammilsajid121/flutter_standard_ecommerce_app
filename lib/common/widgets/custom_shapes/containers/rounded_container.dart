import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TRoundedContainer extends StatelessWidget {
  TRoundedContainer( {super.key,
      this.width,
      this.height,
      this.child,
      this.padding,
      this.margin,
      this.showBorder = false,
      this.radius = TSizes.cardRadiusLg,
      this.bordercolor = TColors.primaryBackground,
      this.BackgroundColor,
      });


  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color bordercolor;
  final Color? BackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          border: showBorder ? Border.all(color: bordercolor,) : null, 
          borderRadius: BorderRadius.circular(radius),
          color: BackgroundColor),
      child: child,
    );
  }
}

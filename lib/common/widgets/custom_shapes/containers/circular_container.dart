import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    //inko required nhi banaya aur kuch ko by default property di jo call karty way change karskty
    this.radius = 400,
    this.padding = 0,
    this.backgrounColor = TColors.white,
    this.child,
    this.height = 400,
    this.width = 400,
    this.margin,
  });

  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgrounColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgrounColor,
      ),
      child: child,
    );
  }
}

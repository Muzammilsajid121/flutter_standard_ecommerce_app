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
      this.BackgroundColor = TColors.textWhite
      });


  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;
  final Color bordercolor;
  final Color BackgroundColor;

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











// class TRoundedContainer extends StatelessWidget {
//   const TRoundedContainer({super.key,
   
  
//   });

//   @override
//   Widget build(BuildContext context) {
//   final double? width;
//   final double? height;
//   final double radius;
//   final Widget? child;
//   final EdgeInsetsGeometry? Padding;
//   final EdgeInsetsGeometry? margin;
//   bool showborder = false;
//   final Color bordercolor;
//   final Color? BackgroundColor;

//     return Container(
//       width: width,
//       height: height,
//       padding: Padding,
//       decoration: BoxDecoration(
//           border: showborder
//               ? Border.all(color: bordercolor, width: 2.0)
//               : null, // Border agar `showBorder` true hai, tabhi dikhayega

//           //
//           borderRadius: BorderRadius.circular(radius),
//           color: BackgroundColor),
//       child: child,
//     );

//   }
// }
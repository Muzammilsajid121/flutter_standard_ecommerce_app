
// import 'package:flutter/material.dart';
// import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
// import 'package:iconsax/iconsax.dart';

// class TBrandTitleWithVerifiedIcon extends StatelessWidget {
//   TBrandTitleWithVerifiedIcon(
//       {super.key,
//       this.brandtextsizes = TSizes.sm,
//       this.iconcolor,
//       this.maxline = 1,
//       this.textAlign,
//       this.textcolor,
//       required this.title});
//   String title;
//   final int maxline;
//   final Color? textcolor, iconcolor;
//   final TextAlign? textAlign;
//   final Textsizes brandtextsizes;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Flexible(
//             child: TBrandTitleText(
//                 title: title,
//                 color: textcolor,
//                 maxline: maxline,
//                 textalign: textAlign,
//                 brandtextSizes: brandtextsizes)),
//         SizedBox(
//           width: TSizes.xs,
//         ),
//         Icon(
//           Iconsax.verify5,
//           color: iconcolor,
//           size: TSizes.xs,
//         )
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

// class TBrandTitleText extends StatelessWidget {
//   TBrandTitleText({
//     super.key,
//     required this.title,
//     this.color,
//     this.maxline = 1,
//     this.brandtextSizes = TSizes.sm,
//     this.textalign,
//   });
//   final Color? color;
//   final String title;
//   final int maxline;
//   final TextAlign? textalign;
//   // final Textsizes brandtextSizes;
//   final TSizes brandtextSizes;


//   @override
//   Widget build(BuildContext context) {
//     return Text(title,
//         textAlign: textalign,
//         maxLines: maxline,
//         overflow: TextOverflow.ellipsis,
//         // check which  brand size is required and set that style
//         style: brandtextSizes == TSizes.sm
//             ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
//             : brandtextSizes == TSizes.md
//                 ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
//                 : brandtextSizes == TSizes.lg
//                     ? Theme.of(context)
//                         .textTheme
//                         .titleLarge!
//                         .apply(color: color)
//                     : Theme.of(context)
//                         .textTheme
//                         .bodyMedium!
//                         .apply(color: color));
//   }
// }
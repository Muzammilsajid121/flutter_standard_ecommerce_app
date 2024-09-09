import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TCicluarImage extends StatelessWidget {
  const TCicluarImage({
    super.key,
    this.backgroundcolor,
    this.fit = BoxFit.cover,
    this.height = 56,
    required this.image,
    this.isnetworkimage = false,
    this.overlaycolor,
    this.padding = TSizes.sm,
    this.width = 56,
  });
  final BoxFit fit;
  final String image;
  final bool isnetworkimage;
  final Color? overlaycolor;
  final Color? backgroundcolor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
         color: backgroundcolor ??(THelperFucntion.isDarkMode(context) ? TColors.black : TColors.white),
          borderRadius: BorderRadius.circular(100)
          ),
          
      child: Center(
        child: ClipOval(
          child: Image(
          image: isnetworkimage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlaycolor,
          fit: fit,
                ),
        )),
    );
  }
}
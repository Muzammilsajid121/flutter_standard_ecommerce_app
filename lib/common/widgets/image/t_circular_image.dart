import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:flutter_standard_ecommerce_app/utils/shimmer/shimmer_effect.dart';

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

      // if it first time download image and then afterwards show cached image   
      child: Center(
        child: ClipOval(
          child: isnetworkimage? CachedNetworkImage(
            imageUrl: image,
            fit: fit,
            color: overlaycolor, 
            progressIndicatorBuilder: (context, url, downloadProgress) => const TShimmerEffect(width: 56, height: 56),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            ) :
          Image(
          image: AssetImage(image),
          color: overlaycolor,
          fit: fit, ),

        )),
    );
  }
}
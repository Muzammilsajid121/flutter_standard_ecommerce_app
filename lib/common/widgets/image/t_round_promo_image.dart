//shift alt f to align code
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class TRoundedpromoimage extends StatelessWidget {
  const TRoundedpromoimage({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    this.border,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.borderRadius = 35,
    this.fit = BoxFit.cover,
    this.padding = EdgeInsets.zero,
    this.isNetworkImage = false,
    this.onPressed,
  });
  final double? width, height;
  final Color? backgroundColor;
  final double borderRadius;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed; //in some cases we dont need to click image

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width,
          height: height,
          padding: padding,
          decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: ClipRRect(
              borderRadius: applyImageRadius
                  ? BorderRadius.circular(borderRadius)
                  : BorderRadius.zero,
              child: Image(
                image: isNetworkImage
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                fit: fit,
              ))),
    );
  }
}

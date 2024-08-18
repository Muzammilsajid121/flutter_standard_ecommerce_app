import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';


//Used as favrt icon button in home screen
class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: dark? TColors.dark.withOpacity(0.9) : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(
        onPressed: (){},
        icon: Icon(Iconsax.heart5)),
    );
  }
}
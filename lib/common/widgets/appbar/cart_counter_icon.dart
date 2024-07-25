
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({super.key,
   required this.onPressed,
   this.iconColor});

  final Color? iconColor;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
   //cart with numbers on top using stack
    return  Stack(
      children: [
    IconButton( onPressed: onPressed, icon: Icon(Iconsax.shopping_bag, color: TColors.white,)),
    //cart item numbers
    Container(width: 18, height: 18,
    decoration: BoxDecoration(color: TColors.black.withOpacity(0.5),
    borderRadius: BorderRadius.circular(20)),
    child: Center(
       child: Text('2', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),),
    ),
    ),
    
      ],
    );

  }
}
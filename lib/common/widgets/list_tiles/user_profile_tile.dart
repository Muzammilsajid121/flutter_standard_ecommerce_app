import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCicluarImage(
        image: TImages.user1,width: 40, height: 40, padding: 0,
      ),

title: Text('MuzammilsXF',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
subtitle: Text('codetoflutter@gmail.com',
style:Theme.of(context).textTheme.bodySmall),
trailing: IconButton( onPressed: onPressed,icon: Icon(Iconsax.edit,color: TColors.white,),),

    );
  }
}
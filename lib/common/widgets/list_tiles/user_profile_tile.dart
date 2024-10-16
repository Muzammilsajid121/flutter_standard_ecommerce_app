import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/controllers/user_controller.dart';
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
    final controller = UserController.instance;  //return already created instance
    return ListTile(
      leading: TCicluarImage(
        image: TImages.user3,width: 40, height: 40, padding: 0,
      ),

title: Text(controller.user.value.fullName,style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
subtitle: Text(controller.user.value.email,
style:Theme.of(context).textTheme.bodySmall),
trailing: IconButton( onPressed: onPressed,icon: Icon(Iconsax.edit,color: TColors.white,),),

    );
  }
}
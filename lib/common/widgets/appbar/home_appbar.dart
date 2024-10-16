import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/cart_counter_icon.dart';
import 'package:flutter_standard_ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/shimmer/shimmer_effect.dart';
import 'package:get/get.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: TColors.grey),
          ),

     //--Display name of user from database
          Obx(
            (){
              if(controller.profileNameLoading.value == true){
                //display a shimmer effect
                return const TShimmerEffect(height: 80, width: 15,);
            }else{
              return Text(
              controller.user.value.fullName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: TColors.white),
            );
              }
            
            }
          ),
        ],
      ),
      
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: Colors.red,
        )
      ],
    );
  }
}

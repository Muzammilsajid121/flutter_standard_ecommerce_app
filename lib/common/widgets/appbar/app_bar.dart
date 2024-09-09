// //alt shift f to algin
// This is a custom appbar

import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.LeadingOnPress,
      this.actions,
      this.showbackarrow = false,
      this.title,
      this.leadingicon});

  final Widget? title;
  final bool showbackarrow;
  final List<Widget>? actions;
  final VoidCallback? LeadingOnPress;
  final IconData? leadingicon;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
          automaticallyImplyLeading: false,
   leading: showbackarrow ? IconButton( onPressed: () {Get.back(); },icon: dark? 
    Icon(Iconsax.arrow_left,color: Colors.white,): Icon(Iconsax.arrow_left))
  : leadingicon != null? IconButton( onPressed: () {LeadingOnPress; }, icon: Icon(leadingicon)): null,
        title: title,
          actions: actions),
    );
  }

  @override
  //implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppbarHeight());
}

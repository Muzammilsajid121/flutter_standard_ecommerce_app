import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/cart_counter_icon.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text(
            TText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: TColors.white),
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

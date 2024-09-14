import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: TSizes.defaultSpaceBtwItem / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 50,
              BackgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.visa,), fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.defaultSpaceBtwItem / 2),
            Text('PayPal', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}

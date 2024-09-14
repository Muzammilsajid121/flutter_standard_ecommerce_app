import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TOrderListItem extends StatelessWidget {
  const TOrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: TSizes.defaultSpaceBtwItem,),
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder:(_,index)=> TRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(TSizes.md),
        BackgroundColor: dark ? TColors.dark : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //-- Row 1
            Row(
              children: [
                // 1 - Icon
                Icon(Iconsax.ship),
                SizedBox(width: TSizes.defaultSpaceBtwItem / 2),
                // 2 - Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary,
                         fontWeightDelta: 1),
                      ),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
            
            //Icon
            IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.md,))
              ],
            ),
      
                  SizedBox(width: TSizes.defaultSpaceBtwItem),
      
       //-- Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                  // 1 - Icon
                  Icon(Iconsax.ship),
                  SizedBox(width: TSizes.defaultSpaceBtwItem / 2),
                  
                   // 2 - Status & Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text( 'Order', style: Theme.of(context).textTheme.bodySmall ),
                       Text( '[#256f2]', style: Theme.of(context).textTheme.bodyLarge ),
                  
                      ],
                    ),
                  ),
                ],
                  ),
                ),
      
      
          Expanded(
                  child: Row(
                    children: [
                  // 1 - Icon
                  Icon(Iconsax.ship),
                  SizedBox(width: TSizes.defaultSpaceBtwItem / 2),
                  
                   // 2 - Status & Date
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text( 'Order', style: Theme.of(context).textTheme.bodySmall ),
                       Text( '[#256f2]', style: Theme.of(context).textTheme.bodyLarge ),
                  
                      ],
                    ),
                  ),
                ],
                  ),
                ),
      
      
               
            
            //Icon
            IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_34, size: TSizes.md,))
              ],
            ),
      
      
          ],
        ),
      ),
    );
  }
}

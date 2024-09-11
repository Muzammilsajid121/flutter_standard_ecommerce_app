import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/ratings_star/rating_star.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFucntion.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(TImages.user4), ),
                SizedBox( width: TSizes.defaultSpaceBtwItem,),
                Text('Priya',style: Theme.of(context).textTheme.titleSmall,)
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(width: TSizes.defaultSpaceBtwItem,),

     //--review
        Row(
         children: [
          //* From common/widgets/rating star
          TRatingBarIndicator( rating: 4,),
          SizedBox(width: TSizes.defaultSpaceBtwItem,),
          Text( '01 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium,),
          SizedBox(height: TSizes.defaultSpaceBtwItem,),
        ]),

        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. great job ! ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle( fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
        ),
        SizedBox(height: TSizes.defaultSpaceBtwItem,),

        //--Company Review Response
        TRoundedContainer(
          BackgroundColor: dark ? TColors.darkGrey : TColors.grey,
          padding: EdgeInsets.all(TSizes.sm),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text( 'Code to Flutter',style: Theme.of(context).textTheme.bodyLarge, ),
                  Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),

              SizedBox(height: TSizes.defaultSpaceBtwItem,),
              ReadMoreText(
                'Thanks for your kinds words and amazing experience. We are glad that you like our product Digi Tasbih! ',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'Show less',
                trimCollapsedText: 'Show more',
                moreStyle: TextStyle( fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: TColors.primary),
              ),
            ],
          ),
        ),
        SizedBox(
          height: TSizes.defaultSpaceBtwSection,
        ),
      ],
    );
  }
}

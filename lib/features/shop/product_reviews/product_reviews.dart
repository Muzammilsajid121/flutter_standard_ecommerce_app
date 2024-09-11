import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/ratings_star/rating_star.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_reviews/widgets/User_review_card.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_reviews/widgets/progress_indicator.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/product_reviews/widgets/rating_and_progress_indicator.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          showbackarrow: true,
          title: Text('Reviews & Ratings',),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        Text('Rating and review are verified and are from people who use the same type of device that you Use.'),
                SizedBox(height: TSizes.defaultSpaceBtwItem, ),

                //--overall Product Rating
                ToverallProductRating(),   //rating with graph
                TRatingBarIndicator(rating: 4.8), //five stars under 4.8 large text
                Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
                SizedBox( height: TSizes.defaultSpaceBtwSection, ),

                //--Review Cards
                UserReviewCard(),
                UserReviewCard(),
                UserReviewCard(),
                UserReviewCard(),
                UserReviewCard(),
              ],
            ),
          ),
        ));
  }
}

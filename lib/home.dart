import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/cart_counter_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/home_appbar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/search_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
     //Header -- video 21
      TPrimaryHeaderContainer(
        child: Column(
          children: [
            //calling appbar
            THomeAppbar(),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //searchbar
            TSearchContainer(text: TText.searchInStore,),
            const SizedBox(height: TSizes.defaultSpaceBtwSection,),

            //categories
            Padding(
              padding: const EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Heading
        TSectionHeading(title: 'Popular Categories',textColor: TColors.white, showActionButton: false,),
         const SizedBox(height: TSizes.defaultSpaceBtwItem,),

                  //Scrollable Categories
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index){
                      THorizontalImageTextScroll(image: TImages.darkApplogo, title: 'Shoes',OnTap: () {},
                      );
                      //  return Padding(
                      //    padding: const EdgeInsets.only(right: TSizes.defaultSpaceBtwItem),
                      //    child: Column(
                      //       children: [
                      //         Container(
                      //           padding: EdgeInsets.all(TSizes.sm),
                      //           width: 56, height: 56,
                      //           decoration: BoxDecoration(
                      //             color: TColors.white,
                      //             borderRadius: BorderRadius.circular(100)
                                             
                      //           ),
                      //                          child: Center(
                      //     child: Image.asset('name', fit: BoxFit.cover, color: TColors.dark,),
                      //                          ),
                      //         ),
                         
                      //        const SizedBox(height: TSizes.defaultSpaceBtwItem/2,),
                      //        Text('Shoes', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.white),
                      //        maxLines: 1, overflow: TextOverflow.ellipsis,)
                         
                         
                          
                      //       ],
                      //     ),
                       )
                    
                    
                    
                    
                      }
                    ),
                  )


                ],
              ),
            )



              ],
            )),
          ],
        ),
      ),
    );
  }
}


class THorizontalImageTextScroll extends StatelessWidget {
  const THorizontalImageTextScroll({super.key,
  
  required this.image, 
  required this.title, 
  this.backgroundColor = TColors.white, 
  this.textColor = TColors.white, 
  required this.OnTap});

  final String image, title;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Padding(
                           padding: const EdgeInsets.only(right: TSizes.defaultSpaceBtwItem),
                           child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(TSizes.sm),
                                  width: 56, height: 56,
                                  decoration: BoxDecoration(
                                    color: backgroundColor,
                                    borderRadius: BorderRadius.circular(100)
                                               
                                  ),
                                                 child: Center(
                            child: Image.asset(image, fit: BoxFit.cover, color: TColors.dark,),
                                                 ),
                                ),
                           
                               const SizedBox(height: TSizes.defaultSpaceBtwItem/2,),
                               Text(title, style: Theme.of(context).textTheme.bodySmall!.copyWith(color: textColor),
                               maxLines: 1, overflow: TextOverflow.ellipsis,)
                           
                           
                            
                              ],
                            ),
                            ),
    );



                        
  }
}
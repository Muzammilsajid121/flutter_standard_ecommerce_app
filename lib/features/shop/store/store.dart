import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/cart_counter_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/tab_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/search_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/store/widgets/category_tab.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/enums.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/helpers/herlper_functions.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: TAppBar(
            title: Text("Store"),
            actions: [
              TCartCounterIcon(
                 onPressed: () {},
              )
            ],
          ),
          
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxidScrolled) {
                return [
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      backgroundColor: THelperFucntion.isDarkMode(context) ? TColors.black : TColors.white,
                      expandedHeight: 440,

         flexibleSpace: Padding(
             padding: EdgeInsets.all(TSizes.defaultSpace),
             child: ListView(
                          shrinkWrap: true,  //occupy only the required space
                          physics: const NeverScrollableScrollPhysics(), //stop scrolling

                          children: [
                            SizedBox(height: TSizes.defaultSpaceBtwItem),
                            // search bar
                            TSearchContainer(
                              text: 'Seach in store',
                              showborder: true,
                              showbackground: false,
                              padding: EdgeInsets.zero,
                            ),
                            SizedBox(height: TSizes.defaultSpaceBtwSection),


                            // Features brand
                            TSectionHeading( title: "Features Brands ",onPressed: () {}, ),
                            SizedBox( height: TSizes.defaultSpaceBtwSection / 1.5),


                            ///TGrid brands
                            TGridLayout(
                              itemcount: 4,
                              mainAxisExtent: 80,
                              itembuilder: (_, index) {
                                return GestureDetector(
                                    onTap: () {},
                                    child: TRoundedContainer(
                                      padding: EdgeInsets.all(TSizes.sm),
                                      BackgroundColor: Colors.transparent,
                                      showBorder: true,
                                      child: Row(
                                        children: [


                                          //icon
                                          Flexible(
                                              child: TCicluarImage(
                                            image: TImages.clothes, 
                                            isnetworkimage: false,
                                            backgroundcolor: Colors.transparent,
                                            overlaycolor:
                                                THelperFucntion.isDarkMode( context)
                                                    ? TColors.white
                                                    : TColors.black,
                                          )),

                                          SizedBox( height: TSizes.defaultSpaceBtwSection/2),

                                          /// Text
                                          Expanded(
                                              child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TBrandTitleWithVerifiedIcon(
                                                title: "Nike",
                                                brandTextSize: TextSizes.large,
                                              ),
                                              
                                              Text(
                                                '256 Product',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              )
                                            ],
                                          ))
                                        ],
                                      ),
                                    ));
                              },
                            )
                          ],
                        ),
                      ),



  //Tabs --video 18 
          bottom:TTabBar(
          tabs: [
          Tab(child: Text("Sports",style: Theme.of(context).textTheme.bodyMedium,),),
          Tab(child: Text("Furniture",style: Theme.of(context).textTheme.bodyMedium),),
          Tab(child: Text("Electronics",style: Theme.of(context).textTheme.bodyMedium),),
          Tab(child: Text("Clothes",style: Theme.of(context).textTheme.bodyMedium),),
          Tab(child: Text("Cosmetics",style: Theme.of(context).textTheme.bodyMedium),),
      
        ]
        )


                    
                      
                      )
                ];
              },
              body: TabBarView(
                children: [
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab(),
                  TCategoryTab()
                ],
              )),

        )
    );
        
      
  }
}
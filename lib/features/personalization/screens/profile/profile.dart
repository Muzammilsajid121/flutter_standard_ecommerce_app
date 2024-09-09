import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/image/t_circular_image.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/profile/profile_menu.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/image_string.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Profile'), showbackarrow: true, ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpaceBtwItem),
          child: Column(
            children: [
              //prfile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCicluarImage(image: TImages.user1, width: 80, height: 80,),
                     SizedBox(height: TSizes.defaultSpaceBtwItem),
                    TextButton(onPressed: () {},child: Text('Change profile picture')),
                  ],
                ),
              ),


              //Detail
              SizedBox(height: TSizes.defaultSpaceBtwItem / 2,),
              Divider(),
              SizedBox(height: TSizes.defaultSpaceBtwItem,),

              TSectionHeading(title: 'profile Information',showActionButton: false, ),
              SizedBox(  height: TSizes.defaultSpaceBtwItem,),

              TProfileMenu(onPressed: () {}, title: 'Name', value: 'code to flutter'),
              TProfileMenu(onPressed: () {}, title: 'Username',icons: Iconsax.copy, value: '@codetoflutter'),
              TProfileMenu(onPressed: () {}, title: 'Phone Number', value: '+92 318 2109082'),
              TProfileMenu(onPressed: () {}, title: 'Gender', value: 'male'),
              TProfileMenu(onPressed: () {},title: 'Date of brith',value: '10 July 2002'),

              SizedBox(height: TSizes.defaultSpaceBtwItem),
              Divider(),
              SizedBox(height: TSizes.defaultSpaceBtwItem,),

      //close Acc Button
       Center(child: TextButton(
                  onPressed: () {},
                  child: Text('Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/List_tiles/user_profile_tile.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/adress/adress.dart';
import 'package:flutter_standard_ecommerce_app/features/personalization/screens/profile/profile.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
              child: Column(
              children: [
                //AppBar
                TAppBar(
                  showbackarrow: true,
                  title: Text(
                  'Account',style: Theme.of(context) .textTheme.bodyMedium!.apply(color: TColors.white),),
                ),
                // SizedBox(height: TSizes.defaultSpaceBtwSection,)

                // user profile card
                TUserProfileTile( onPressed: () => Get.to(() => ProfileScreen()),  ),
                SizedBox( height: TSizes.defaultSpaceBtwSection,),
                
              ],
            )),

            /// body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
              
        // Account Setting
      TSectionHeading( title: 'Account Setting', showActionButton: false, ),
      SizedBox(height: TSizes.defaultSpaceBtwItem, ),
      
 TSettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses',
 Subtitle: 'Set Shoping delivery address', onTap: () => Get.to( ()=> UserAddressScreeen()),),

                  TSettingMenuTile(
                      icon: Iconsax.shopping_bag,
                      title: 'My Cart',
                      Subtitle: 'add,remove products and move to checkout'),
                  TSettingMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Order ',
                      Subtitle: 'In-progress and compelete order'),
                  TSettingMenuTile(
                      icon: Iconsax.bank,
                      title: 'My  Account',
                      Subtitle: 'Widthdraw balance to rejestered bank account'),
                  TSettingMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      Subtitle: 'List of all discount coupons'),
                  TSettingMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications ',
                      Subtitle: 'Set any kind of notification message'),
                  TSettingMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account pravcy ',
                      Subtitle: 'Manage data usage and connected accounts'),

                  // app setting
                  SizedBox(
                    height: TSizes.defaultSpaceBtwSection,
                  ),
                  TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),

                  SizedBox(
                    height: TSizes.defaultSpaceBtwSection,
                  ),

                  TSettingMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data ',
                      Subtitle: 'Upload Data to your Cloud Firebase'),

                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation ',
                    Subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    Subtitle: 'Search result is safe for all age',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image Quality ',
                    Subtitle: 'Set image quality to be seen ',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),


SizedBox(height: TSizes.defaultSpaceBtwSection,),
//LogOut Button
                  SizedBox(width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: Text('Logout')))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
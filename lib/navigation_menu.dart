import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/features/home/home.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/store/store.dart';
import 'package:flutter_standard_ecommerce_app/features/shop/wishlishts/wishlist.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
     //instance
    final controller = Get.put(NavigationController());

    return  Scaffold(
      //to redraw the screen based on index selected wrap the navigatorbar with obx
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value=index,
        
          destinations: [
            //Add 4 Destinations
           const NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
           const NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
           const NavigationDestination(icon: Icon(Iconsax.heart), label: "Whishlist"),
           const NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
        
          ]),
      ),
      body:  Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  
  final screens = [
    const HomeScreen(),
    StoreScreen(),
    FavoriteScreen(),
    Container(color: Colors.blue,)
   ];




}
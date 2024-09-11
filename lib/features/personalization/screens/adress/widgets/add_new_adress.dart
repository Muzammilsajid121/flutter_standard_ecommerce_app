import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showbackarrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
//-- Name and Phone num 

    TextFormField(
    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Name'),
    ),
    const SizedBox(height: TSizes.spaceBtwInputFields),
    TextFormField(
    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number'),
      ),
    const SizedBox(height: TSizes.spaceBtwInputFields),
//-- Street and postal code 
     Row(
      children: [
       Expanded(
       child: TextFormField(
        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Street'),
                      ),
                    ),

                    const SizedBox(width: TSizes.spaceBtwInputFields),
     Expanded(
      child: TextFormField(
       decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Postal Code'),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: TSizes.spaceBtwInputFields),
//-- City and State 
      Row(
      children: [
       Expanded(
       child: TextFormField(
        decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'City'),
                      ),
                    ),

                    const SizedBox(width: TSizes.spaceBtwInputFields),
     Expanded(
      child: TextFormField(
       decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'State'),
                      ),
                    ),
                  ],
                ),

   const SizedBox(height: TSizes.spaceBtwInputFields),
   //--country 
    TextFormField(
       decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country'),),

   const SizedBox(height: TSizes.defaultSpaceBtwSection),
   //--save button
   SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Save'))),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

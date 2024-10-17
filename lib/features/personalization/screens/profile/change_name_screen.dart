import 'package:flutter/material.dart';
import 'package:flutter_standard_ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:flutter_standard_ecommerce_app/features/authentication/controllers/update_name_controller.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter_standard_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter_standard_ecommerce_app/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeNameScreen extends StatelessWidget {
  const ChangeNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      // Custom Appbar
      appBar: TAppBar(
        showbackarrow: true,
        title: Text('Change Name', style: Theme.of(context).textTheme.bodyMedium),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              'Use real name for easy verification. This name will appear on several screens.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            // Text
            const SizedBox(height: TSizes.defaultSpaceBtwSection),

            // Text field and Button
            Form(
              key: controller.updateUserNameFormkey,
              child: Column(
               children: [
                //fist name
                TextFormField(
                controller: controller.firstName,
                validator: (value) => Tvalidator.validateEmptyText('First name', value),
                expands: false,
                decoration: const InputDecoration(labelText: TText.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
                //last name
              TextFormField(
                controller: controller.lastName,
                validator: (value) => Tvalidator.validateEmptyText('Last name', value),
                expands: false,
                decoration: const InputDecoration(labelText: TText.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.defaultSpaceBtwSection),

        // Save Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: () => controller.updateUserName(), child: const Text('Save')),
        ),
        //!y button filhal chalo nhi
        const SizedBox(height: TSizes.defaultSpaceBtwSection),
      ],
    ),
  )
  );
}

}

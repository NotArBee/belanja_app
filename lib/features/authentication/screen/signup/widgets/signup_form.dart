import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screen/signup/verify_email.dart';
import 'package:t_store/features/authentication/screen/signup/widgets/terms_conditions_checkbox.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: TTexts.firstName),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: TTexts.lastName),
                ),
              )
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_tick),
                labelText: TTexts.username),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct), labelText: TTexts.email),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call), labelText: TTexts.phoneNo),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          // password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.lock), labelText: TTexts.password),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          // terms of use
          const TTermsAndConditionCheckbox(),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          // button create account
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: const Text(TTexts.createAccount)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}

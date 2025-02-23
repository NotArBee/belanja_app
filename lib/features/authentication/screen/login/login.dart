import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // logo, title dan sub-title
              const TLoginHeader(),

              // form
              const TLoginForm(),

              // divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections / 4,
              ),

              // footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

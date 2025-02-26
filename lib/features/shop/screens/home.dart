import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                /// appbar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// searchbar
                TSearchContainer(text: TTexts.searchBox),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      /// Heading
                      TSectionHeading(
                        title: TTexts.popularCategories,
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// Categories
                      THomeCategories(),
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
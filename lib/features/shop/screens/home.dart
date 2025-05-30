import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:t_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../common/widgets/layouts/grid_layout.dart';
import '../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            const TPrimaryHeaderContainer(
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

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- promo slider --
                    const TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    /// heaading
                    TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () {},
                    ),

                    /// -- popular products --
                    TGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => const TProductCardVertical(),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

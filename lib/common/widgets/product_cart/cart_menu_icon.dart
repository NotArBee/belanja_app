import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColorDarkMode,
    required this.iconColorLightMode,
  });

  final Color iconColorDarkMode;
  final Color iconColorLightMode;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: darkMode ? iconColorDarkMode : iconColorLightMode,
            )),
        Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                  color: darkMode ? TColors.white : TColors.black,
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: darkMode ? TColors.black : TColors.white, fontSizeFactor: 0.8),
                ),
              ),
            ))
      ],
    );
  }
}

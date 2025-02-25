import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 300,
          child: Stack(
            children: [
              Positioned(
                  top: -200,
                  right: -220,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 80,
                  right: -300,
                  child: TCircularContainer(
                    backgroundColor: TColors.textWhite.withOpacity(0.1),
                  )),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

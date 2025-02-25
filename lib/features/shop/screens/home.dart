import 'package:flutter/material.dart';
import 'package:t_store/features/shop/screens/widgets/home_appbar.dart';

import '../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

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
                THomeAppBar()
              ],
            )),
          ],
        ),
      ),
    );
  }
}

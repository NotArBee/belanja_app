import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final corouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    corouselCurrentIndex.value = index;

  }
}
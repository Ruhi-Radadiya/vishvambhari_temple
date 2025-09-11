import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt bottomNavigationIndex = 2.obs;
  PageController pageController = PageController(initialPage: 2);

  void getIndex({required int index}) {
    bottomNavigationIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 2); // 👈 Start at Home
  }

  void changePageView({required int index}) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}

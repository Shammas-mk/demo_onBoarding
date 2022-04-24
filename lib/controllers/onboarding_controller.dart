import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:on_boarding/models/onboarding_info.dart';
import 'package:on_boarding/views/home_page.dart';

class OnboardingController extends GetxController {
  bool get isLastPage => selectedIndex.value == onboardingPages.length - 1;
  var selectedIndex = 0.obs;
  var pageController = PageController();

  nextPage() {
    if (isLastPage) {
      Get.to(() => const HomePage());
    } else {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.fastOutSlowIn);
    }
  }

  List<OnBoardingInfo> onboardingPages = [
    OnBoardingInfo('assets/order.png', 'Order Your Food',
        'Order Food From Mobile, Anywhere and Any time'),
    OnBoardingInfo('assets/cook.png', 'Halal Foods',
        'Order Food From Mobile, We maintain safety And Do it in halal Way'),
    OnBoardingInfo(
        'assets/deliver.png', 'Quick Delivery', 'Get Your Order In 15 minutes'),
  ];
}

import 'package:eltaquim_elespo3y/core/resources/app_navigation.dart';
import 'package:eltaquim_elespo3y/core/resources/routs_manager.dart';
import 'package:eltaquim_elespo3y/core/resources/utils.dart';
import 'package:flutter/material.dart';

class OnboardingController {
  final PageController pageController = PageController();


  void nextPage(BuildContext context) {
    if (pageController.page!.toInt() < Utils.onboardingList.length-1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      AppNavigation.push(
          context, routesName: RoutesNameManager.onboarding);
    }
  }

  void skip(BuildContext context) {
    AppNavigation.push(
        context, routesName: RoutesNameManager.onboarding);
  }
}


import 'dart:async';
import 'package:eltaquim_elespo3y/core/resources/app_navigation.dart';
import 'package:eltaquim_elespo3y/core/resources/routs_manager.dart';
import 'package:flutter/material.dart';

class OnboardingController {

  final PageController pageController = PageController();

  final StreamController<int> pageStreamController =
  StreamController<int>.broadcast();

  int currentIndex = 0;

  void changePage(int index) {
    currentIndex = index;
    pageStreamController.sink.add(index);
  }

  void nextPage(BuildContext context) {
    if (currentIndex < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
     AppNavigation.push(context, routesName: RoutesNameManager.onboarding.routeName as RoutesNameManager);
    }
  }

  void skip(BuildContext context) {
    AppNavigation.push(context, routesName: RoutesNameManager.onboarding.routeName as RoutesNameManager);
  }

  void dispose() {
    pageController.dispose();
    pageStreamController.close();
  }
}
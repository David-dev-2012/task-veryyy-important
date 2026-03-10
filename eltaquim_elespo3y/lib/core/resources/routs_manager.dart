import 'package:flutter/material.dart';

import '../../view/on_boarding_page/on_boarding_screens/onboarding_page_screen.dart';
import '../unknown_rout_page.dart';

class RoutsManager {
  RoutsManager._();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Widget page;

    if (RoutesNameManager.onboarding.routeName == "/") {
      page = OnboardingScreenPage();
    }else{
      page = UnknownRoutPage();
    }
    return MaterialPageRoute(builder: (context) => page,);

  }

}

enum RoutesNameManager {
  onboarding("/");

  final String routeName;

  const RoutesNameManager(this.routeName);
}

import 'package:eltaquim_elespo3y/core/resources/routs_manager.dart';
import 'package:flutter/cupertino.dart';

class AppNavigation {
  AppNavigation._();
 static void push(BuildContext context, {required RoutesNameManager routesName}) =>
      Navigator.pushNamed(context, routesName as String);
}

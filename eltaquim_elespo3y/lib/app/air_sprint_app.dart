import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/routs_manager.dart';

class AirSprintApp extends StatelessWidget {
  const AirSprintApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // حجم التصميم
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute:RoutsManager.onGenerateRoute,
        );
      },
    );
  }
}
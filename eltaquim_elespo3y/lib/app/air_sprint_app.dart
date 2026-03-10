import 'package:flutter/material.dart';

import '../core/resources/routs_manager.dart';

class AirSprintApp extends StatelessWidget {
  const AirSprintApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutsManager.onGenerateRoute,
    );
  }
}
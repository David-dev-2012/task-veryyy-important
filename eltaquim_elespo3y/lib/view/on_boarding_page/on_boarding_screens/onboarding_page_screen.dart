import 'package:eltaquim_elespo3y/core/resources/color_manager.dart';
import 'package:eltaquim_elespo3y/core/resources/height.dart';
import 'package:eltaquim_elespo3y/core/resources/image_manager.dart';
import 'package:eltaquim_elespo3y/core/resources/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/onboarding_page_controller.dart';
import '../../../core/resources/font_size_manager.dart';
import '../../../core/resources/utils.dart';

class OnboardingScreenPage extends StatefulWidget {
  const OnboardingScreenPage({super.key});

  @override
  State<OnboardingScreenPage> createState() => _OnboardingScreenState();
}

late final OnboardingController controller;

init() {
  controller = OnboardingController();
}

dispose() {
  controller.pageController.dispose();
}

class _OnboardingScreenState extends State<OnboardingScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: WidthManager.w20),
          child: Column(
            children: [
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    onPressed: () => controller.skip(context),
                    child: Text(
                      Utils.skip,
                      style: TextStyle(
                        color: ColorManager.grey,
                        fontSize: FontSizeManager.f16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: HeightManager.h115),
              CircleAvatar(
                radius: 40,
                backgroundColor: ColorManager.secondary,
                child: Image.asset(
                  ImageManager.car,
                  height: HeightManager.h130,
                  width: WidthManager.w220,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: HeightManager.h100),
              Text(
                Utils.onboardingTitle1,
                style: TextStyle(
                  fontSize: FontSizeManager.f24,
                  color: Colors.white,
                ),
              ),
              Text(
                Utils.onboardingSubTitle1,
                style: TextStyle(
                  fontSize: FontSizeManager.f16,
                  color: ColorManager.lightPrimaryColor,
                ),
              ),
              SizedBox(height: HeightManager.h80),
              InkWell(
                child: Container(
                  width: double.infinity,
                  height: HeightManager.h60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusGeometry.circular(8.r),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

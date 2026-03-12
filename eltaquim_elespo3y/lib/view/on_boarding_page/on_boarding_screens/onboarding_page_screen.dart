import 'package:dots_indicator/dots_indicator.dart';
import 'package:eltaquim_elespo3y/core/resources/color_manager.dart';
import 'package:eltaquim_elespo3y/core/resources/height.dart';
import 'package:eltaquim_elespo3y/core/resources/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/onboarding_page_controller.dart';
import '../../../core/resources/utils.dart';

class OnboardingScreenPage extends StatefulWidget {
  const OnboardingScreenPage({super.key});

  @override
  State<OnboardingScreenPage> createState() => _OnboardingScreenState();
}

final OnboardingController controller = OnboardingController();

class _OnboardingScreenState extends State<OnboardingScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: Utils.onboardingList.length,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: controller.changePage,
                itemBuilder: (context, index) {
                  return Utils.onBoardingPageViewList[index];
                },
              ),
            ),

            SizedBox(height: HeightManager.h20),

            StreamBuilder<int>(
              stream: controller.pageStreamController.stream,
              initialData: 0,
              builder: (context, snapshot) {
                return DotsIndicator(
                  dotsCount: Utils.onboardingList.length,
                  position: snapshot.data!.toDouble(),
                  onTap: (pos) {
                    controller.pageController.jumpToPage(pos.toInt());
                    controller.changePage(pos.toInt());
                  },
                  decorator: DotsDecorator(
                    activeColor: ColorManager.white,
                    activeSize: Size(WidthManager.w25, HeightManager.h5),
                    activeShape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    size: Size(WidthManager.w15, HeightManager.h5),
                    color: ColorManager.lightPrimaryColor,
                    spacing: EdgeInsets.symmetric(horizontal: HeightManager.h5),
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                );
              },
            ),

            SizedBox(height: HeightManager.h40),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/resources/color_manager.dart';
import '../../../core/resources/font_size_manager.dart';
import '../../../core/resources/height.dart';
import '../../../core/resources/utils.dart';
import '../../../core/resources/width.dart';
import 'onboarding_page_screen.dart';

class OnBoardingScreenPageView extends StatelessWidget {
  final String image;

  final String title;

  final String subtitle;

  const OnBoardingScreenPageView({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: WidthManager.w20),
          child: Column(
            children: [
              // skip
              Row(
                children: [
                  const Spacer(),
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

              SizedBox(height: HeightManager.h110),

              CircleAvatar(
                radius: 80.r,
                backgroundColor: ColorManager.secondary,

                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: HeightManager.h225,
                  width: WidthManager.w220,
                ),
              ),

              SizedBox(height: HeightManager.h80),

              Text(
                title,
                style: TextStyle(
                  fontSize: FontSizeManager.f24,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: HeightManager.h10),

              Text(
                subtitle,
                style: TextStyle(
                  fontSize: FontSizeManager.f16,
                  color: ColorManager.lightPrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: HeightManager.h80),

              InkWell(
                onTap: () => controller.nextPage(context),
                child: Container(
                  width: double.infinity,
                  height: HeightManager.h60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    Utils.next,
                    style: TextStyle(
                      color: ColorManager.lightBlack,
                      fontSize: FontSizeManager.f16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              SizedBox(height: HeightManager.h50),
            ],
          ),
        ),
      ),
    );
  }
}

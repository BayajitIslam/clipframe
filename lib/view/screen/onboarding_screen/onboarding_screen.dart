import 'package:clipframe/core/app_routes/app_routes.dart';
import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
import 'package:clipframe/view/widget/my_appbar_login/my_appbar_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBarLogin(),
      body: Container(
        //<======================= Background Color ================================>
        width: 440.w,
        height: 956.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topLeft,
            colors: [
              Color(0xFFFFF4E6),
              Color(0xFFFFE8D6),
              Color(0xFFFCE4EC),
              Color(0xFFE8D5F2),
              Color(0xFFD4C5F9),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              //============= Logo Here ============
              SizedBox(height: 128.h),
              Image.asset(AppImages.logo),

              //======================= image here ==============
              SizedBox(height: 135.h),
              Image.asset(AppImages.onboarding),

              //=================== Title =====================
              SizedBox(height: 100.h),
              Row(
                children: [
                  CustomText(
                    text: AppString.onboardingTitle,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),

              //=================== Sub Title ==================
              SizedBox(height: 10.h),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  CustomText(
                    text: AppString.onboardingSubTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secandaryText,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              //=================== Buttton Here ==============
              SizedBox(height: 30.h),
              CustomButton(
                height: 84.h,
                onTap: () {
                  //====================== Go To Home Page =====================
                  Get.offAllNamed(AppRoutes.homeScreen);
                },
              ),

              //=================== Privacy Policy =============
              SizedBox(height: 15.h),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  CustomText(
                    text: AppString.privacyPolicy,
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secandaryText,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

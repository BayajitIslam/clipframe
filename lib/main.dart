import 'package:clipframe/core/app_routes/app_routes.dart';
import 'package:clipframe/view/screen/onboarding_screen/onboarding_screen.dart';
import 'package:clipframe/view/widget/language_switch/language_switch_controller/language_switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  Get.put(LanguageSwitchController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(440, 956),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnboardingScreen(),
          getPages: AppRoutes.pages,
        );
      },
    );
  }
}

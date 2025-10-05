import 'dart:ui';

import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<T?> showPremiumBottomSheetBenifits<T>(BuildContext context) {
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    shape: BeveledRectangleBorder(),
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.premiumPagesBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 47,
                right: 20,
                left: 20,
                bottom: 23,
              ),
              child: Row(
                children: [
                  //================================== Back To Home Button =======================================
                  CustomButton(
                    isTexton: false,
                    isIconOn: true,
                    borderRadius: 99,
                    width: 44,
                    height: 44,
                    onTap: () {
                      Navigator.of(
                        context,
                        rootNavigator: true,
                      ).popUntil((route) => route.isFirst);
                    },
                  ),

                  //===================================== logo here ===================================
                  SizedBox(width: 87.5.w),
                  Image.asset(AppImages.logoWhite),
                ],
              ),
            ),
            //============================== Premium Plane ======================
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Container(
                  width: 380.w,
                  height: 278.h,
                  color: AppColors.black50,
                  child: Column(children: [Text("Hello ")]),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

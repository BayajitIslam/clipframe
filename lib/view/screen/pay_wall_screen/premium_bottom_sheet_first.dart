import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/screen/pay_wall_screen/premium_bottom_sheet_secand.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<T?> showPremiumBottomSheet<T>(BuildContext context) {
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    shape: BeveledRectangleBorder(),
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47, right: 20, left: 20),
              child: Row(
                children: [
                  //================================== cross buttton =======================================
                  CustomButton(
                    isTexton: false,
                    isIconOn: true,
                    borderRadius: 99,
                    width: 44,
                    height: 44,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),

                  //===================================== logo here ===================================
                  SizedBox(width: 87.5.w),
                  Image.asset(AppImages.logoWhite),
                ],
              ),
            ),
            //============================== Use exclusive styles with ClipFrame Premium======================
            Container(
              width: 440.w,
              height: 448.h,
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              margin: EdgeInsets.only(top: 13),
              child: Stack(
                children: [
                  //============================== Use exclusive styles with ClipFrame Premium======================
                  Positioned(
                    top: 13,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      AppImages.clipFramePremium,
                      fit: BoxFit.cover,
                    ),
                  ),

                  //============================== View all benifits Bittpm ======================
                  Positioned(
                    bottom: 42,
                    left: 20,
                    right: 20,
                    child: CustomButton(
                      backgroundColor: AppColors.buttonBg,
                      fontsize: 14,
                      borderRadius: 10,
                      title: AppString.viewAllBenifits,
                      onTap: () {
                        showPremiumBottomSheetBenifits(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

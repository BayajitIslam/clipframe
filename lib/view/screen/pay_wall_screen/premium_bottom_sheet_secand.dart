import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/screen/pay_wall_screen/inner_widget/inner_widget.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<T?> showPremiumBottomSheetBenifits<T>(BuildContext context) {
  return showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    isScrollControlled: true,
    shape: BeveledRectangleBorder(),
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
            //==================================  Premium Pages AppBar =======================================
            PremiumPagesAppBar(),

            //============================== Premium Plane / What i Offer ======================
            SizedBox(height: 23.h),
            ContainerForPremiumPages(
              height: 278,
              width: 380,
              borderRadius: 25,
              widget: Column(
                children: [
                  IconAndTextRow(icon: Icons.bolt),
                  IconAndTextRow(icon: Icons.emoji_emotions_outlined),
                  IconAndTextRow(
                    icon: Icons.access_time,
                    text: AppString.fasterProseeing,
                  ),
                  IconAndTextRow(
                    icon: Icons.settings_outlined,
                    text: AppString.noWaterMarks,
                  ),
                  IconAndTextRow(icon: Icons.block, text: AppString.removeAds),
                ],
              ),
            ),

            //============================== Premium Plane / Not Sure yet? ===============================
            SizedBox(height: 14.h),
            ContainerForPremiumPages(
              height: 78,
              width: 380,
              top: 15,
              bottom: 15,
              //============================== Plan Name & Plane Price ===============================
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //============================== Plan Name  ===============================
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppString.notSureYet,
                        color: AppColors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      CustomText(
                        text: AppString.enableFreeAccess,
                        color: AppColors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ],
                  ),

                  //============================== Plane Price ===============================
                  PlanPriceWidget(
                    reelNumber: 1,
                    postNumber: 1,
                    storyNumber: 3,
                    monthOrYear: AppString.month,
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

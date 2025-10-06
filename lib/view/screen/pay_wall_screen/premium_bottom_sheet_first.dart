import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/screen/pay_wall_screen/inner_widget/inner_widget.dart';
import 'package:clipframe/view/screen/pay_wall_screen/premium_bottom_sheet_secand.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomRight,
            colors: [Colors.transparent, AppColors.black],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PremiumPagesAppBar(),
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
                boxShadow: [
               
                ]
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
                  //======================== Shadow ===============================
                  Positioned(
                    bottom: 80,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 440.w,
                      height: 280.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentGeometry.topCenter,
                          end: AlignmentGeometry.bottomCenter,
                          colors: [Colors.transparent, AppColors.black],
                        ),
                      ),
                    ),
                  ),

                  //======================== Icon And Text ===============================
                  Positioned(
                    top: 113.64,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(180),
                              gradient: LinearGradient(
                                colors: [AppColors.pink, AppColors.buttonBg],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: AppColors.white,
                              size: 24,
                            ),
                          ),
                        ),

                        //Text
                        CustomText(
                          text: AppString.clipFramePremium,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),

                  //============================== View all benifits Button ======================
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

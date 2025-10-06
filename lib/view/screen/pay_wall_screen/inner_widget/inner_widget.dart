import 'dart:ui';

import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//==================================  Premium Pages AppBar =======================================
class PremiumPagesAppBar extends StatelessWidget {
  const PremiumPagesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

//================================== Container Design For Premium Pages =======================================

class ContainerForPremiumPages extends StatelessWidget {
  final Widget widget;
  final double width;
  final double height;
  final double borderRadius;
  final double top;
  final double bottom;
  final double left;
  final double right;

  const ContainerForPremiumPages({
    super.key,
    required this.widget,
    required this.height,
    required this.width ,
    this.borderRadius = 15,
    this.top = 19,
    this.bottom = 19,
    this.left = 19,
    this.right = 19,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          padding: EdgeInsets.only(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
          ),
          width: width.w,
          height: height.h,
          color: AppColors.black50,
          child: widget,
        ),
      ),
    );
  }
}

//================================== Icon Text Row =======================================

class IconAndTextRow extends StatelessWidget {
  final IconData? icon;
  final String text;
  const IconAndTextRow({
    super.key,
    required this.icon,
    this.text = AppString.dummyText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Icon Here
          Icon(icon, size: 24, color: AppColors.buttonBg),

          //Title Here
          SizedBox(width: 10.w),
          CustomText(
            text: text,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}

//============================== Plane Price ===============================
class PlanPriceWidget extends StatelessWidget {
  final int reelNumber;
  final int postNumber;
  final int storyNumber;
  final String monthOrYear;
  const PlanPriceWidget({
    super.key,
    required this.postNumber,
    required this.reelNumber,
    required this.storyNumber,
    required this.monthOrYear
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //============================== Reel  ===============================
          SizedBox(width: 5,),
          OfferType(name: AppString.reel, number: reelNumber),

          //============================== Post   ===============================
          SizedBox(width: 5,),
          OfferType(name: AppString.post, number: reelNumber),

          //============================== Story ===============================
          SizedBox(width: 5,),
          OfferType(name: AppString.story, number: reelNumber),

          //============================== Plan Type ===============================
          SizedBox(width: 5,),
          CustomText(text:  monthOrYear,color: AppColors.white,fontSize: 12,fontWeight: FontWeight.w400,)
        ],
      ),
    );
  }
}

//============================== offer Type   ===============================
class OfferType extends StatelessWidget {
  final int number;
  final String name;
  const OfferType({super.key, required this.name, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "$number",
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        CustomText(
          text: name,
          color: AppColors.white60,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}

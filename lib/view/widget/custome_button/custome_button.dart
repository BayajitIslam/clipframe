import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/utils/app_static_string/app_string.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height = 48,
    this.width = double.maxFinite,
    required this.onTap,
    this.title = AppString.letsGetStarted,
    this.marginVerticel = 0,
    this.marginHorizontal = 0,
    this.backgroundColor = AppColors.buttonText,
    this.fontsize = 20,
    this.borderRadius = 20,
    this.isTexton = true,
    this.isIconOn = false,
    this.icon = Icons.close,
  });

  final double height;
  final double width;

  final VoidCallback onTap;

  final String title;
  final Color backgroundColor;

  final double marginVerticel;
  final double marginHorizontal;

  final double fontsize;
  final double borderRadius;

  final bool isTexton;
  final bool isIconOn;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: marginVerticel,
          horizontal: marginHorizontal,
        ),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              fontSize: fontsize,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              textAlign: TextAlign.center,
              text: isTexton ? title : '',
            ),
            isIconOn ? Icon(icon,color: AppColors.white,) : Container(),
          ],
        ),
      ),
    );
  }
}

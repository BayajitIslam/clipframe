import 'package:clipframe/utils/app_colors/app_colors.dart';
import 'package:clipframe/view/widget/custome_text/custome_text.dart';
import 'package:clipframe/view/widget/language_switch/language_switch_controller/language_switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSwitch extends StatelessWidget {
  final double width;
  final double height;

  const LanguageSwitch({super.key, this.width = 52, this.height = 33});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LanguageSwitchController>();

    return Obx(() {
      return GestureDetector(
        onTap: () => controller.toggleLanguage(),
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.pink,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: [
              // Sliding Circle Background
              AnimatedAlign(
                duration: Duration(milliseconds: 250),
                alignment: controller.isEnglish.value
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  width: height - 8,
                  height: height - 8,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              // Labels ("Es" and "En")
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: CustomText(
                        text: "Es",
                        color: controller.isEnglish.value
                            ? AppColors.white
                            : AppColors.pink,
                        fontWeight: controller.isEnglish.value
                            ? FontWeight.w500
                            : FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: CustomText(
                        text: "En",
                        color: controller.isEnglish.value
                            ? AppColors.pink
                            : AppColors.white,
                        fontWeight: controller.isEnglish.value
                            ? FontWeight.w500
                            : FontWeight.w700,
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}

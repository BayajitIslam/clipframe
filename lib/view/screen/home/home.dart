import 'package:clipframe/utils/app_images/app_images.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Upgrade to PRO',
              onTap: () {
                // Shoe Bottom Sheet
                showModalBottomSheet(
                  isDismissible: false,
                  enableDrag: false,
                  isScrollControlled: true,
                  shape: BeveledRectangleBorder(),
                  useSafeArea: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
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
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

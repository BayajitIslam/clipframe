import 'package:clipframe/view/screen/pay_wall_screen/premium_bottom_sheet_first.dart';
import 'package:clipframe/view/widget/custome_button/custome_button.dart';
import 'package:flutter/material.dart';

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
                // Shoe Bottom Sheet -- Premium Benefits
                showPremiumBottomSheet(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

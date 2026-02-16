import 'package:flutter/material.dart';
import 'package:goldpulse/core/constants/app_colors.dart';
import 'package:goldpulse/core/constants/app_strings.dart';
import 'package:goldpulse/core/routing/app_routes.dart';
import 'package:goldpulse/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: AppStrings.gold,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.goldScreen);
            },
            backgroundColor: AppColors.goldColor,
            textColor: Colors.white,
          ),
          SizedBox(height: 15),
          CustomButton(
            text: AppStrings.silver,
            onPressed: () {},
            backgroundColor: AppColors.sliverColor,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

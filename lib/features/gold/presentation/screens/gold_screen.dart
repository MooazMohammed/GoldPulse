import 'package:flutter/material.dart';
import 'package:goldpulse/core/constants/app_colors.dart';
import 'package:goldpulse/core/constants/app_images.dart';
import 'package:goldpulse/core/constants/app_strings.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          AppStrings.goldTracker,
          style: TextStyle(color: AppColors.goldColor, fontSize: 30),
        ),

        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(AppImages.goldImage),
            // height: 800,
            // width: 800,
          ),
          // SizedBox(height: 10),
          Text(
            "333333\$",
            style: TextStyle(
              color: AppColors.goldColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

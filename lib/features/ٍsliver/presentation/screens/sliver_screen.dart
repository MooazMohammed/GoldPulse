import 'package:flutter/material.dart';
import 'package:goldpulse/core/constants/app_colors.dart';
import 'package:goldpulse/core/constants/app_images.dart';
import 'package:goldpulse/core/constants/app_strings.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          AppStrings.sliverTracker,
          style: TextStyle(
            color: AppColors.sliverColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(AppImages.sliverImage),
            width: double.infinity,
          ),
          // SizedBox(height: 10),
          Text(
            "333333\$",
            style: TextStyle(
              color: AppColors.sliverColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldpulse/core/constants/app_colors.dart';
import 'package:goldpulse/core/constants/app_images.dart';
import 'package:goldpulse/core/constants/app_strings.dart';
import 'package:goldpulse/features/gold/data/repo/gold_repo.dart';
import 'package:goldpulse/features/gold/presentation/manager/cubit/gold_cubit.dart';
import 'package:goldpulse/features/gold/presentation/manager/cubit/gold_states.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            AppStrings.goldTracker,
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          centerTitle: true,
        ),

        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldStateLoading) {
              return Center(child: CircularProgressIndicator(
                color: AppColors.goldColor,
              ));
            } else if (state is GoldStateError) {
              return Center(
                child: Text(
                  state.errMessage,
                  style: TextStyle(color: Colors.red),
                ),
              );
            } else if (state is GoldStateSuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.goldImage),
                    // height: 800,
                    // width: 800,
                  ),
                  // SizedBox(height: 10),
                  Text(
                    "${state.goldModel.price.toString()}\t\$",
                    style: TextStyle(
                      color: AppColors.goldColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: SizedBox(
                  child: CircularProgressIndicator(color: AppColors.goldColor),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

var mooaz = "";

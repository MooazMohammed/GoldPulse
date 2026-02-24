import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldpulse/core/constants/app_colors.dart';
import 'package:goldpulse/core/constants/app_images.dart';
import 'package:goldpulse/core/constants/app_strings.dart';
import 'package:goldpulse/features/%D9%8Dsliver/data/repos/sliver_repo.dart';
import 'package:goldpulse/features/%D9%8Dsliver/presentation/manager/sliver_cubit.dart';
import 'package:goldpulse/features/%D9%8Dsliver/presentation/manager/sliver_states.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliverCubit(SliverRepo())..getSliver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: AppColors.sliverColor,
          ),
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
        body: BlocBuilder<SliverCubit, SliverStates>(
          builder: (context, state) {
            if (state is FailureSliverState) {
              return Center(
                child: Text(
                  state.errMessage,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            } else if (state is SuccessSliverState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.sliverImage),
                    width: double.infinity,
                  ),

                  Text(
                    "${state.sliverModel.price.toString()}\t\$",
                    style: TextStyle(
                      color: AppColors.sliverColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              );
            } else {
              return Center(
                child: CircularProgressIndicator(color: AppColors.sliverColor),
              );
            }
          },
        ),
      ),
    );
  }
}

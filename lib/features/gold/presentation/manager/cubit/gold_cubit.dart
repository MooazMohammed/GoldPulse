import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldpulse/features/gold/data/repo/gold_repo.dart';
import 'package:goldpulse/features/gold/presentation/manager/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldStateInitial()) {
    log("🔵 GoldCubit created"); 
  }

  Future<void> getGold() async {
    if (kDebugMode) {
      print("⏳ 0. getGold() called");
    }  
    emit(GoldStateLoading());
    
    final response = await goldRepo.getGold();
    
    response.fold(
      (l) {
        if (kDebugMode) {
          print("❌ Emitting Error: $l");
        }
        emit(GoldStateError(errMessage: l));
      },
      (r) {
        if (kDebugMode) {
          print("✅ Emitting Success: ${r.price}");
        }
        emit(GoldStateSuccess(goldModel: r));
      },
    );
  }
}

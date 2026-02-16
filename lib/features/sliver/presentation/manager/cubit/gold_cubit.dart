import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldpulse/features/gold/data/repo/gold_repo.dart';
import 'package:goldpulse/features/sliver/presentation/manager/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldStateInitial());

  Future<void> getGold() async {
    emit(GoldStateLoading());
    final response = await goldRepo.getGold();

    response.fold(
      (l) => emit(GoldStateError(errMessage: l)),

      (r) => emit(GoldStateSuccess(goldModel: r)),
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldpulse/features/%D9%8Dsliver/data/repos/sliver_repo.dart';
import 'package:goldpulse/features/%D9%8Dsliver/presentation/manager/sliver_states.dart';

class SliverCubit extends Cubit<SliverStates> {
  SliverCubit(this.sliverRepo) : super(InitialSliverState());

  final SliverRepo sliverRepo;

  Future<void> getSliver() async {
    emit(LoadingSliverState());
    final response = await sliverRepo.getSliver();

    response.fold(
      (l) {
        emit(FailureSliverState(errMessage: l));
      },
      (r) {
        emit(SuccessSliverState(sliverModel: r));
      },
    );
  }
}

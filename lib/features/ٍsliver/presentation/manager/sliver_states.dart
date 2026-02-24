import 'package:goldpulse/features/%D9%8Dsliver/data/models/sliver_model.dart';

abstract class SliverStates {}

class InitialSliverState extends SliverStates {}

class LoadingSliverState extends SliverStates {}

class SuccessSliverState extends SliverStates {
  final SliverModel sliverModel;

  SuccessSliverState({required this.sliverModel});
}

class FailureSliverState extends SliverStates {
  final String errMessage;

  FailureSliverState({required this.errMessage});
}

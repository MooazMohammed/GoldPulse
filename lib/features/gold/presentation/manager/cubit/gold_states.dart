import 'package:goldpulse/features/gold/data/models/gold_model.dart';

abstract class GoldStates {}

class GoldStateInitial extends GoldStates {}

class GoldStateLoading extends GoldStates {}

class GoldStateError extends GoldStates {
  final String errMessage;

  GoldStateError({required this.errMessage});
}

class GoldStateSuccess extends GoldStates {
  final GoldModel goldModel;

  GoldStateSuccess({required this.goldModel});
}

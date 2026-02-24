import 'package:dartz/dartz.dart';
import 'package:goldpulse/core/networking/api_constants.dart';
import 'package:goldpulse/core/networking/dio_helper.dart';
import 'package:goldpulse/features/%D9%8Dsliver/data/models/sliver_model.dart';

class SliverRepo {
  Future<Either<String, SliverModel>> getSliver() async {
    try {
      final response = await DioHelper.getData(
        endPoint: ApiConstants.sliverEndPoint,
      );

      final model = SliverModel.fromJson(response.data);

      return right(model);
    } catch (e) {
      return left(e.toString());
    }
  }
}

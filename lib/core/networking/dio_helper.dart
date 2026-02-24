import 'package:dio/dio.dart';
import 'package:goldpulse/core/networking/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static  init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: Duration(seconds: 20),
        receiveTimeout: Duration(seconds: 20),
      ),
    );
  }

  static Future<dynamic> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final result = await dio.get(endPoint, 
    queryParameters: queryParameters
   
    );
    return result;
  }
}

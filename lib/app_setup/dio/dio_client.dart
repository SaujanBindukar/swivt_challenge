import 'package:dio/dio.dart';

import 'interceptors/error_interceptors.dart';
import 'interceptors/request_interceptors.dart';
import 'interceptors/response_interceptors.dart';

Dio dioClient() {
  final _dio = Dio();
  var options = BaseOptions(
    connectTimeout: 5000,
    receiveTimeout: 5000,
    baseUrl: "https://api.themoviedb.org/3/",
    queryParameters: {
      'api_key': '8b64a757db3ca10e01db9a717db9b331',
    },
  );
  _dio.options = options;
  _dio.interceptors.addAll([
    LogInterceptor(),
    RequestInterceptor(),
    ResponseInterceptor(),
    ErrorInterceptor(),
  ]);
  return _dio;
}

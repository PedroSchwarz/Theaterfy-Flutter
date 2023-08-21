import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await '';
    options.headers['Authorization'] = 'Bearer $token';
    return handler.next(options);
  }
}

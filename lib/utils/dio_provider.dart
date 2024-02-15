// Package imports:
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:flutter_skeleton/utils/logger_interceptor.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();
  dio.interceptors.add(LoggerInterceptor());
  return dio;
}

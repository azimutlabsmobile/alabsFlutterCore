import 'package:alabs_flutter_core/core.dart';
import 'package:dio/dio.dart';

extension DioErrorExt on DioException {
  Failure handleError([String defaultMessage = CoreConstants.empty]) {
    try {
      switch (response?.statusCode) {
        case 401:
          return UnauthorizedFailure(
            message: response?.data?['message'] ?? message,
          );
        case 404:
          return NotFoundFailure(
            message: response?.data?['message'] ?? message,
          );
        case 500:
        case 502:
        case 504:
          return ServerFailure(response: response);
        default:
          return DioFailure(response: response);
      }
    } catch (_) {
      return CustomFailure(
        message: message ?? defaultMessage,
        code: response?.statusCode ?? -1,
      );
    }
  }
}

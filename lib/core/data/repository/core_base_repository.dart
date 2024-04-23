import 'package:alabs_flutter_core/core/data/extensions/dio_error_ext.dart';
import 'package:alabs_flutter_core/core/data/models/result.dart';
import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

mixin CoreBaseRepository {
  Future<Result<DVO>> apiCall<DTO, DVO>(
    Future<DTO> apiCall, {
    required DVO Function(DTO dto) onResult,
  }) async {
    try {
      final response = await apiCall;

      return Result(data: onResult(response));
    } on DioException catch (exception) {
      _printError("DioException $exception");
      return Result(failures: [exception.handleError()]);
    } on ServerException catch (exception) {
      _printError("ServerException $exception");
      return Result(failures: [ServerFailure(response: exception.response)]);
    }
  }

  _printError(String? error) {
    if (kDebugMode) {
      Logger().d("Exception = $error");
    }
  }
}

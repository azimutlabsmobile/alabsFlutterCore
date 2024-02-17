import 'dart:io';

import 'package:alabs_flutter_core/core/data/models/result_api.dart';
import 'package:alabs_flutter_core/core/data/network/network_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

mixin BaseRepository {
  Future<ResultApi<T>> apiCall<T>(Future<T> apiCall) async {
    try {
      var result = await apiCall;
      return ResultSuccess(result);
    } on ServerException catch (exception) {
      _printError("ServerException $exception");
      return ResultError([ServerFailure(response: exception.response)]);
    } on DioError catch (exception) {
      _printError("Dio Error $exception");
      return ResultError([DioFailure(response: exception.response)]);
    } on SocketException {
      _printError("SocketException");
      return ResultError([NoConnectionFailure()]);
    } on Exception {
      _printError("NoConnectionFailure");
      return ResultError([NoConnectionFailure()]);
    } catch (exception) {
      _printError("NoConnectionFailure");
      return ResultError([NoConnectionFailure()]);
    }
  }

  _printError(String? error) {
    if (kDebugMode) {
      Logger().d("Exception = $error");
    }
  }
}
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../core/api/api_consumer.dart';
import '../../core/api/app_interceptors.dart';
import '../../core/api/end_points.dart';
import '../../core/api/status_code.dart';
import '../../core/error/exceptions.dart';
import '../../core/services/service_locator.dart';

class DioConsumer extends ApiConsumer {
  final Dio client;

  DioConsumer(this.client) {
    client.options
      ..baseUrl = EndPoints.baseUrl
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..validateStatus = (status) {
        return status! < StatusCode.internalServerError;
      };

    client.interceptors.add(getIt.get<AppInterceptors>());
    if (kDebugMode) {
      client.interceptors.add(getIt.get<LogInterceptor>());
    }
  }

  @override
  Future getData(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.get(
        path,
        queryParameters: queryParameters,
      );
      return handleResponseAsJson(response);
    } on DioError catch (error) {
      handleDioError(error);
    }
  }

  @override
  Future postData(
    String path, {
    Map<String, dynamic>? data,
    bool formDataIsEnabled = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.post(
        path,
        queryParameters: queryParameters,
        data: formDataIsEnabled ? FormData.fromMap(data!) : data,
      );
      return handleResponseAsJson(response);
    } on DioError catch (error) {
      handleDioError(error);
    }
  }

  @override
  Future putData(
    String path, {
    Map<String, dynamic>? data,
    bool formDataIsEnabled = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.put(
        path,
        queryParameters: queryParameters,
        data: formDataIsEnabled ? FormData.fromMap(data!) : data,
      );
      return handleResponseAsJson(response);
    } on DioError catch (error) {
      handleDioError(error);
    }
  }

  //////////////////////////////////////////////////////////
  dynamic handleResponseAsJson(Response<dynamic> response) {
    return jsonDecode(response.data.toString());
  }

  //////////////////////////////////////////////////////////
  dynamic handleDioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectionTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw const FetchDataException();
      case DioErrorType.badCertificate:
        throw const IncorrectCertificateException();
      case DioErrorType.connectionError:
        throw const NoInternetConnectionException();
      case DioErrorType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            throw const BadRequestException();
          case StatusCode.unauthorized:
          case StatusCode.forbidden:
            throw const UnauthorizedException();
          case StatusCode.notFound:
            throw const NotFoundException();
          case StatusCode.conflict:
            throw const ConflictException();
          case StatusCode.internalServerError:
            throw const InternalServerErrorException();
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.unknown:
        break;
    }
  }
}

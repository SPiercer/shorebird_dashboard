import 'dart:convert';

import 'package:dio/dio.dart';

enum BodyType { json, form, urlencoded }

abstract interface class HttpService {
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response<T>> post<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Options? options,
    BodyType bodyType = BodyType.json,
  });
}

class HttpServiceImpl implements HttpService {
  final Dio _dio;

  HttpServiceImpl(this._dio);

  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  @override
  Future<Response<T>> post<T>(
    String path, {
    body,
    Map<String, dynamic>? queryParameters,
    Options? options,
    BodyType bodyType = BodyType.json,
  }) {
    return _dio.post<T>(
      path,
      data: _filterBody(body, bodyType),
      queryParameters: queryParameters,
      options: options,
    );
  }

  dynamic _filterBody(dynamic body, BodyType bodyType) {
    if (body == null) return null;
    if (BodyType.urlencoded == bodyType) return jsonEncode(body);
    if (BodyType.form == bodyType) return FormData.fromMap(body);
    return body;
  }
}

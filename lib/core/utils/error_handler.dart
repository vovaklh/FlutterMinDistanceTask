import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/exceptions/local_exception.dart';
import 'package:shortest_way_task/data/datasources/local/enums/local_error.dart';

abstract class ErrorHandler {
  static String processError(BuildContext context, Object exception) {
    if (exception is DioError) {
      return _getDioErrorMessage(exception) ??
          LocalError.defaultError.toMessage(context);
    } else if (exception is String) {
      return exception;
    } else if (exception is LocalException) {
      return exception.error.toMessage(context);
    } else {
      return LocalError.defaultError.toMessage(context);
    }
  }

  static String? _getDioErrorMessage(DioError error) {
    final Map<String, dynamic> responseData = error.response?.data ?? {};

    final String? errorMessage = responseData['message'];

    return errorMessage;
  }
}

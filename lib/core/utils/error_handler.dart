import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/exceptions/local_exception.dart';
import 'package:shortest_way_task/data/datasources/local/enums/local_error.dart';

abstract class ErrorHandler {
  static String processError(BuildContext context, Object exception) {
    if (exception is String) {
      return exception;
    } else if (exception is LocalException) {
      return exception.error.toMessage(context);
    } else {
      return LocalError.defaultError.toMessage(context);
    }
  }
}

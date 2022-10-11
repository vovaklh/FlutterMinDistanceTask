import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';

enum LocalError {
  defaultError,
  noInternetConnection;

  const LocalError();

  String toMessage(BuildContext context) {
    switch (this) {
      case LocalError.defaultError:
        return context.localizations.defaultError;
      case LocalError.noInternetConnection:
        return context.localizations.noInternetConnection;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:useful_extensions/useful_extensions.dart';

mixin Validator {
  String? validateUrl(String? url, BuildContext context) {
    if (url.isNullOrEmpty) {
      return context.localizations.fieldMustNotBeEmpty;
    } else if (Uri.tryParse(url!)?.isAbsolute.not() ?? true) {
      return context.localizations.urlIsNotValid;
    }
    return null;
  }
}

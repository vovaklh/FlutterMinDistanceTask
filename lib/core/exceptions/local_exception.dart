import 'package:shortest_way_task/data/datasources/local/enums/local_error.dart';

class LocalException implements Exception {
  final LocalError error;

  LocalException(this.error);
}

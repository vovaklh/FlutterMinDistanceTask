import 'dart:collection';

import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

abstract class DataRepository {
  Future<DataWrapper> getData();

  Future<void> setApiBaseUrl(String url);

  Future<String> getApiUrl();

  Future<void> evaluateResults(Map<Data, Queue<Point>> results);
}

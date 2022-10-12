import 'dart:collection';

import 'package:shortest_way_task/core/utils/path_finder.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';


Future<Queue<Point>> findShortestPath(Data data) async {
  final pathFinder = BFGPathFinder(data);
  return pathFinder.findShortestPath();
}

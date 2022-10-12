import 'dart:collection';

import 'package:shortest_way_task/domain/entities/point.dart';

extension QueueExt on Queue<Point> {
  String getPath() {
    String path = "";
    for (var i = 0; i < length; i++) {
      final Point point = elementAt(i);
      if (i == length - 1) {
        path += "(${point.x},${point.y})";
      } else {
        path += "(${point.x},${point.y})->";
      }
    }
    return path;
  }

  Queue<Point> replacePoints() {
    final Queue<Point> points = Queue();
    for (var i = 0; i < length; i++) {
      final Point point = elementAt(i);
      points.addLast(Point(x: point.y, y: point.x));
    }
    return points;
  }
}

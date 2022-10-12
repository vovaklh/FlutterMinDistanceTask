import 'dart:collection';

import 'package:shortest_way_task/core/exceptions/local_exception.dart';
import 'package:shortest_way_task/core/utils/path_finder.dart';
import 'package:shortest_way_task/domain/entities/point.dart';
import 'package:test/test.dart';
import 'package:shortest_way_task/domain/entities/data.dart';

void main() {
  group('Find shortest path', () {
    test('Path exist', () async {
      const data = Data(
        id: "1",
        field: [".X.", ".X.", "..."],
        start: Point(x: 2, y: 1),
        end: Point(x: 0, y: 2),
      );
      final expectedPath = Queue.from(
        [
          const Point(x: 2, y: 1),
          const Point(x: 1, y: 2),
          const Point(x: 0, y: 2),
        ],
      );
      final shortestPath = await findShortestPath(data);

      expect(shortestPath, expectedPath);
    });

    test('Start and end points are equal', () async {
      const data = Data(
        id: "1",
        field: [
          ".X.",
          ".X.",
          "...",
        ],
        start: Point(x: 2, y: 1),
        end: Point(x: 2, y: 1),
      );
      final expectedPath = Queue.from(
        [const Point(x: 2, y: 1)],
      );
      final shortestPath = await findShortestPath(data);

      expect(shortestPath, expectedPath);
    });

    test('No path', () async {
      const data = Data(
        id: "1",
        field: [
          "XXX.",
          "X..X",
          "XXX.",
          ".X..",
        ],
        start: Point(x: 0, y: 3),
        end: Point(x: 3, y: 0),
      );

      expect(
        () async => await findShortestPath(data),
        throwsA(isA<LocalException>()),
      );
    });
  });
}

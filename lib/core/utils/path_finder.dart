import 'dart:collection';

import 'package:shortest_way_task/core/exceptions/local_exception.dart';
import 'package:shortest_way_task/data/datasources/local/enums/local_error.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

abstract class PathFinder {
  Queue<Point> findShortestPath();
}

class BFGPathFinder implements PathFinder {
  final Data data;

  late List<List<String>> grid;
  late int gridWidth = 0;
  late int gridHeight = 0;

  BFGPathFinder(this.data);

  @override
  Queue<Point> findShortestPath() {
    grid = List.generate(
      data.field.length,
      (index) => data.field[index].split(''),
    );
    gridWidth = grid.first.length;
    gridHeight = grid.length;

    List<int> cameFrom = List.generate(
      gridWidth * gridHeight,
      (int index) => -1,
      growable: false,
    );

    Queue<int> frontier = Queue<int>();
    frontier.add(_convert2dto1d(data.start));

    // Start BFG
    while (frontier.isNotEmpty) {
      int current = frontier.removeFirst();
      Queue<Point> neighbors = _getNeighbors(_convert1dto2d(current));

      for (Point node in neighbors) {
        int node1d = _convert2dto1d(node);

        if (cameFrom[node1d] == -1) {
          frontier.add(node1d);
          cameFrom[node1d] = current;
        }
      }
    }
    // Finish BFG

    final solution = Queue<Point>();
    Point startNode = data.start;
    Point endNode = data.end;
    solution.add(endNode);
    while (endNode.x != startNode.x || endNode.y != startNode.y) {
      int endNode1d = _convert2dto1d(endNode);

      if (cameFrom[endNode1d] == -1) {
        throw LocalException(LocalError.cantFindTheShortestPath);
      }

      endNode = _convert1dto2d(cameFrom[endNode1d]);
      solution.addFirst(endNode);
    }

    return solution;
  }

  int _convert2dto1d(Point node) {
    return node.y * gridWidth + node.x;
  }

  Point _convert1dto2d(int node1d) {
    int y = node1d ~/ gridWidth;
    int x = node1d - y * gridWidth;

    return Point(y: y, x: x);
  }

  Queue<Point> _getNeighbors(Point node) {
    Queue<Point> neighbors = Queue<Point>();
    // Moving up, down, left, right
    if (_isValidNode(Point(x: node.x + 1, y: node.y))) {
      neighbors.add(Point(x: node.x + 1, y: node.y));
    }
    if (_isValidNode(Point(x: node.x - 1, y: node.y))) {
      neighbors.add(Point(x: node.x - 1, y: node.y));
    }
    if (_isValidNode(Point(x: node.x, y: node.y + 1))) {
      neighbors.add(Point(x: node.x, y: node.y + 1));
    }
    if (_isValidNode(Point(x: node.x, y: node.y - 1))) {
      neighbors.add(Point(x: node.x, y: node.y - 1));
    }

    // Moving diagonally
    if (_isValidNode(Point(x: node.x - 1, y: node.y - 1))) {
      neighbors.add(Point(x: node.x - 1, y: node.y - 1));
    }
    if (_isValidNode(Point(x: node.x - 1, y: node.y + 1))) {
      neighbors.add(Point(x: node.x - 1, y: node.y + 1));
    }

    if (_isValidNode(Point(x: node.x + 1, y: node.y - 1))) {
      neighbors.add(Point(x: node.x + 1, y: node.y - 1));
    }
    if (_isValidNode(Point(x: node.x + 1, y: node.y + 1))) {
      neighbors.add(Point(x: node.x + 1, y: node.y + 1));
    }

    return neighbors;
  }

  bool _isValidNode(Point node) {
    if (node.x >= 0 &&
        node.y >= 0 &&
        node.x < gridWidth &&
        node.y < gridHeight &&
        grid[node.y][node.x] != 'X') {
      return true;
    }
    return false;
  }
}

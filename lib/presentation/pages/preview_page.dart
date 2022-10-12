import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/core/utils/extensions/queue_ext.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

class PreviewPage extends StatelessWidget {
  final Data data;
  final Queue<Point> shortestPath;

  const PreviewPage({
    super.key,
    required this.data,
    required this.shortestPath,
  });

  List<List<Color>> _getPointColors(BuildContext context) {
    final list = List.generate(
      data.field.length,
      (i) => List.generate(
        data.field.first.length,
        (j) {
          switch (data.field[i][j]) {
            case "X":
              return context.color.blockedPoint;
            default:
              return context.color.defaultPoint;
          }
        },
      ),
    );
    for (var point in shortestPath) {
      list[point.x][point.y] = context.color.shortestPathPoint;
    }

    list[data.start.x][data.start.y] = context.color.startPoint;
    list[data.end.x][data.end.y] = context.color.endPoint;

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final colors = _getPointColors(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.previewScreen),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: data.field.length,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < data.field.length; i++)
                  for (int j = 0; j < data.field[i].length; j++)
                    _Cell(
                      point: Point(x: i, y: j),
                      color: colors[i][j],
                    ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              shortestPath.replaceXY().getPath(),
              style: context.text.previewPageShortestPath,
            ),
          ],
        ),
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  final Point point;
  final Color color;

  const _Cell({
    required this.point,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          color: color,
        ),
        alignment: Alignment.center,
        height: 30,
        child: Text(
          "(${point.y},${point.x})",
          style: context.text.gridPoint,
        ),
      ),
    );
  }
}

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/core/utils/extensions/queue_ext.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

class ResultsPage extends StatelessWidget {
  final Map<Data, Queue<Point>> solutions;

  const ResultsPage({super.key, required this.solutions});

  void _goToPreviewScreen(
    BuildContext context,
    MapEntry<Data, Queue<Point>> solution,
  ) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result list screen'),
        centerTitle: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (_, int index) => GestureDetector(
          onTap: () =>
              _goToPreviewScreen(context, solutions.entries.elementAt(index)),
          child: Container(
            height: 60,
            alignment: Alignment.center,
            child: Text(
              solutions.entries.elementAt(index).value.replaceXY().getPath(),
              textAlign: TextAlign.center,
              style: context.text.resultsScreenTitle,
            ),
          ),
        ),
        separatorBuilder: (_, __) => const Divider(
          height: 1,
        ),
        itemCount: solutions.length,
      ),
    );
  }
}

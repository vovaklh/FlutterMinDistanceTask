import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/core/utils/extensions/queue_ext.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';
import 'package:shortest_way_task/presentation/pages/preview_page.dart';

class ResultsPage extends StatelessWidget {
  final Map<Data, Queue<Point>> solutions;

  const ResultsPage({super.key, required this.solutions});

  void _goToPreviewPage(
    BuildContext context,
    MapEntry<Data, Queue<Point>> solution,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PreviewPage(
          data: solution.key,
          shortestPath: solution.value,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.resultListScreen),
        centerTitle: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (_, int index) => InkWell(
          onTap: () =>
              _goToPreviewPage(context, solutions.entries.elementAt(index)),
          child: Container(
            height: 60,
            width: double.infinity,
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

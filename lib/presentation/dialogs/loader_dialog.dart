import 'package:flutter/material.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';

class LoaderDialog extends StatelessWidget {
  const LoaderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 15),
            Text(context.localizations.loading),
          ],
        ),
      ),
    );
  }
}

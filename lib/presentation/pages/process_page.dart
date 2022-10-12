import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shortest_way_task/core/di/locator.dart';
import 'package:shortest_way_task/core/mixins/error_provider.dart';
import 'package:shortest_way_task/core/utils/error_handler.dart';
import 'package:shortest_way_task/core/utils/extensions/build_context_ext.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/presentation/cubits/process_cubit/process_cubit.dart';
import 'package:shortest_way_task/presentation/dialogs/loader_dialog.dart';
import 'package:shortest_way_task/presentation/pages/results_page.dart';

class ProcessPage extends StatefulWidget {
  final List<Data> data;

  const ProcessPage({
    super.key,
    required this.data,
  });

  @override
  State<ProcessPage> createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> with ErrorProvider {
  final _cubit = locator<ProcessCubit>();

  bool _isDialogShown = false;

  void _listenBloc(_, ProcessState state) {
    _dismissDialog();
    switch (state.status) {
      case ProcessStatus.loading:
        _showLoaderDialog();
        break;
      case ProcessStatus.successEvaluated:
        Future.delayed(const Duration(milliseconds: 500), _goToResultPage);
        break;
      case ProcessStatus.failure:
        showError(ErrorHandler.processError(context, state.exception), context);
        break;
      default:
        break;
    }
  }

  void _showLoaderDialog() {
    showDialog(
      context: context,
      builder: (_) => const LoaderDialog(),
    );
    _isDialogShown = true;
  }

  void _dismissDialog() {
    if (_isDialogShown) {
      Navigator.of(context).pop();
      _isDialogShown = false;
    }
  }

  void _onSendButtonTap() {
    _cubit.evaluateResults();
  }

  void _goToResultPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => ResultsPage(
        solutions: _cubit.state.solutions,
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    _cubit.findShortestPaths(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.localizations.processScreen),
      ),
      body: BlocConsumer<ProcessCubit, ProcessState>(
        bloc: _cubit,
        builder: (_, ProcessState state) {
          return _Process(progress: state.progress, onTap: _onSendButtonTap);
        },
        listener: _listenBloc,
      ),
    );
  }
}

class _Process extends StatelessWidget {
  final double progress;
  final VoidCallback onTap;

  const _Process({
    key,
    required this.progress,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Spacer(),
          if (progress < 100)
            Text(
              context.localizations.calculating,
              style: context.text.processPageCalculationResults,
              textAlign: TextAlign.center,
            ),
          if (progress >= 100)
            Text(
              context.localizations.finishedCalculations,
              style: context.text.processPageCalculationResults,
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 10),
          Text("$progress %"),
          const SizedBox(height: 10),
          const Divider(height: 1),
          const SizedBox(height: 10),
          CircularPercentIndicator(
            radius: 40,
            progressColor: context.color.percentageIndicatorColor,
            percent: progress / 100,
          ),
          const Spacer(),
          if (progress == 100)
            SizedBox(
              width: double.infinity,
              child: _SendButton(
                onTap: onTap,
              ),
            ),
        ],
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  final VoidCallback onTap;

  const _SendButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(context.localizations.sendResults),
    );
  }
}

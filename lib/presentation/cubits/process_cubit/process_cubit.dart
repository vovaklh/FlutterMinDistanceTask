import "dart:collection";

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/core/utils/path_finder.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';

part 'process_cubit.freezed.dart';
part 'process_state.dart';
part 'process_status.dart';

class ProcessCubit extends Cubit<ProcessState> {
  final DataRepository dataRepository;

  ProcessCubit({required this.dataRepository}) : super(const ProcessState());

  Future<void> findShortestPaths(List<Data> data) async {
    try {
      for (var i = 0; i < data.length; i++) {
        final shortestPath = await compute(findShortestPath, data[i]);
        final progress = 100 / data.length * (i + 1);
        final Map<Data, Queue<Point>> newMap = Map.from(state.solutions);
        newMap.addEntries([MapEntry(data[i], shortestPath)]);
        emit(state.copyWith(
          solutions: newMap,
          progress: progress,
          status: ProcessStatus.successCalculated,
        ));
      }
    } catch (exception) {
      emit(state.copyWith(
        exception: exception,
        status: ProcessStatus.failure,
      ));
    }
  }

  Future<void> evaluateResults() async {
    try {
      if (state.solutions.isNotEmpty) {
        emit(state.copyWith(status: ProcessStatus.loading));

        await dataRepository.evaluateResults(state.solutions);

        emit(state.copyWith(status: ProcessStatus.successEvaluated));
      }
    } catch (exception) {
      emit(state.copyWith(
        exception: exception,
        status: ProcessStatus.failure,
      ));
    }
  }
}

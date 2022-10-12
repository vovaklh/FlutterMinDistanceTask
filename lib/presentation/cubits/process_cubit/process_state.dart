part of 'process_cubit.dart';

@freezed
class ProcessState with _$ProcessState {
  const factory ProcessState([
    @Default({}) Map<Data, Queue<Point>> solutions,
    @Default(0) double progress,
    @Default(ProcessStatus.initial) ProcessStatus status,
    @Default("") Object exception,
  ]) = _ProcessState;
}

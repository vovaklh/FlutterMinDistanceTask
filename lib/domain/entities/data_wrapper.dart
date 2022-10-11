import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/domain/entities/data.dart';

part 'data_wrapper.freezed.dart';

@freezed
class DataWrapper with _$DataWrapper {
  const DataWrapper._();

  const factory DataWrapper({
    required bool error,
    required String message,
    required List<Data> data,
  }) = _DataWrapper;
}

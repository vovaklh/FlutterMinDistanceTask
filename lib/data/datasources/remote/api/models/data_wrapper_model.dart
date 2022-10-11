import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_model.dart';

part 'data_wrapper_model.freezed.dart';
part 'data_wrapper_model.g.dart';

@freezed
class DataWrapperModel with _$DataWrapperModel {
  const DataWrapperModel._();

  const factory DataWrapperModel({
    required bool error,
    required String message,
    required List<DataModel> data,
  }) = _DataWrapperModel;

  factory DataWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$DataWrapperModelFromJson(json);
}

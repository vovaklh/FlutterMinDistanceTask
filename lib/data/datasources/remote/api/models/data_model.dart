import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel {
  const DataModel._();

  const factory DataModel({
    required String id,
    required List<String> field,
    required PointModel start,
    required PointModel end,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

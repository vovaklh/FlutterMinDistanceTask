import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/steps_model.dart';

part 'data_post_model.freezed.dart';
part 'data_post_model.g.dart';

@freezed
class DataPostModel with _$DataPostModel {
  const DataPostModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DataPostModel({
    required String id,
    required StepsModel result,
  }) = _DataPostModel;

  factory DataPostModel.fromJson(Map<String, dynamic> json) =>
      _$DataPostModelFromJson(json);
}

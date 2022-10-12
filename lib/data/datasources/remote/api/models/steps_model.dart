import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_post_model.dart';

part 'steps_model.freezed.dart';
part 'steps_model.g.dart';

@freezed
class StepsModel with _$StepsModel {
  const StepsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory StepsModel({
    required List<PointPostModel> steps,
    required String path,
  }) = _StepsModel;

  factory StepsModel.fromJson(Map<String, dynamic> json) =>
      _$StepsModelFromJson(json);
}

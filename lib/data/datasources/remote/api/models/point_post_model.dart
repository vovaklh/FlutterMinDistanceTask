import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_post_model.freezed.dart';
part 'point_post_model.g.dart';

@freezed
class PointPostModel with _$PointPostModel {
  const PointPostModel._();

  const factory PointPostModel({
    required String x,
    required String y,
  }) = _PointPostModel;

  factory PointPostModel.fromJson(Map<String, dynamic> json) =>
      _$PointPostModelFromJson(json);
}

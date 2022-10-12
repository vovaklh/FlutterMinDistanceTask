import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

part 'data.freezed.dart';

@freezed
class Data with _$Data {
  const Data._();

  const factory Data({
    required String id,
    required List<String> field,
    required Point start,
    required Point end,
  }) = _Data;
}

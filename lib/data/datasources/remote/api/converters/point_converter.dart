import 'package:shortest_way_task/data/datasources/remote/api/models/point_model.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

class PointConverter implements ModelConverter<PointModel, Point> {
  @override
  Point modelToEntity(PointModel model) {
    return Point(
      x: model.x,
      y: model.y,
    );
  }
}

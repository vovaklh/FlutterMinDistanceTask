import 'package:shortest_way_task/data/datasources/remote/api/models/data_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_model.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

class DataConverter implements ModelConverter<DataModel, Data> {
  final ModelConverter<PointModel, Point> pointConverter;

  DataConverter({required this.pointConverter});

  @override
  Data modelToEntity(DataModel model) {
    return Data(
      id: model.id,
      field: model.field,
      start: pointConverter.modelToEntity(model.start),
      end: pointConverter.modelToEntity(model.end),
    );
  }
}

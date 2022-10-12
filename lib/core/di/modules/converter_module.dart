import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/data/datasources/remote/api/converters/data_converter.dart';
import 'package:shortest_way_task/data/datasources/remote/api/converters/data_wrapper_converter.dart';
import 'package:shortest_way_task/data/datasources/remote/api/converters/point_converter.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_model.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';
import 'package:shortest_way_task/domain/entities/point.dart';

@module
abstract class ConverterModule {
  @lazySingleton
  ModelConverter<PointModel, Point> pointConverter() {
    return PointConverter();
  }

  @lazySingleton
  ModelConverter<DataModel, Data> dataConverter(
    ModelConverter<PointModel, Point> pointConverter,
  ) {
    return DataConverter(pointConverter: pointConverter);
  }

  @lazySingleton
  ModelConverter<DataWrapperModel, DataWrapper> dataWrapperConverter(
    ModelConverter<DataModel, Data> dataConverter,
  ) {
    return DataWrapperConverter(dataConverter: dataConverter);
  }
}

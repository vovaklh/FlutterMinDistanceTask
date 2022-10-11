import 'package:shortest_way_task/data/datasources/remote/api/models/data_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';

class DataWrapperConverter
    implements ModelConverter<DataWrapperModel, DataWrapper> {
  final ModelConverter<DataModel, Data> dataConverter;

  DataWrapperConverter({required this.dataConverter});

  @override
  DataWrapper modelToEntity(DataWrapperModel model) {
    return DataWrapper(
      error: model.error,
      message: model.message,
      data: model.data.map((e) => dataConverter.modelToEntity(e)).toList(),
    );
  }
}

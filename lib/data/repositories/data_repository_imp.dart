import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:shortest_way_task/core/utils/extensions/queue_ext.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_post_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/point_post_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/steps_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/services/data_service.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';
import 'package:shortest_way_task/domain/entities/point.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';

class DataRepositoryImp implements DataRepository {
  final SharedPrefs prefs;
  final Dio dio;
  final DataService dataService;
  final ModelConverter<DataWrapperModel, DataWrapper> wrapperConverter;
  final ModelConverter<PointModel, Point> pointConverter;

  DataRepositoryImp({
    required this.prefs,
    required this.dio,
    required this.dataService,
    required this.wrapperConverter,
    required this.pointConverter,
  });

  @override
  Future<DataWrapper> getData() async {
    final wrapper = await dataService.getData();

    return wrapperConverter.modelToEntity(wrapper);
  }

  @override
  Future<void> setApiBaseUrl(String url) async {
    dio.options = dio.options.copyWith(baseUrl: url);
    await prefs.setApiUrl(url);
  }

  @override
  Future<String> getApiUrl() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return prefs.getApiUrl();
  }

  @override
  Future<void> evaluateResults(Map<Data, Queue<Point>> results) async {
    final models = _getModels(results);

    await dataService.evaluateResults(models);
  }

  List<DataPostModel> _getModels(Map<Data, Queue<Point>> results) {
    final List<DataPostModel> models = [];
    for (final result in results.entries) {
      models.add(
        DataPostModel(
          id: result.key.id,
          result: StepsModel(
            steps: result.value
                .map((point) => PointPostModel(
                      x: point.x.toString(),
                      y: point.y.toString(),
                    ))
                .toList(),
            path: result.value.getPath(),
          ),
        ),
      );
    }
    return models;
  }
}

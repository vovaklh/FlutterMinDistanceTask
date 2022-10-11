import 'package:dio/dio.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/services/data_service.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';

class DataRepositoryImp implements DataRepository {
  final SharedPrefs prefs;
  final Dio dio;
  final DataService dataService;
  final ModelConverter<DataWrapperModel, DataWrapper> wrapperConverter;

  DataRepositoryImp({
    required this.prefs,
    required this.dio,
    required this.dataService,
    required this.wrapperConverter,
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
  String getApiUrl() => prefs.getApiUrl();
}

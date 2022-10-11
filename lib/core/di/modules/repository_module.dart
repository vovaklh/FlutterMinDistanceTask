import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/data/datasources/local/shared_prefs.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';
import 'package:shortest_way_task/data/datasources/remote/api/services/data_service.dart';
import 'package:shortest_way_task/data/repositories/data_repository_imp.dart';
import 'package:shortest_way_task/domain/converters/model_converter.dart';
import 'package:shortest_way_task/domain/entities/data_wrapper.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  DataRepository dataRepository(
    SharedPrefs sharedPrefs,
    Dio dio,
    DataService dataService,
    ModelConverter<DataWrapperModel, DataWrapper> wrapperConverter,
  ) {
    return DataRepositoryImp(
      prefs: sharedPrefs,
      dio: dio,
      dataService: dataService,
      wrapperConverter: wrapperConverter,
    );
  }
}

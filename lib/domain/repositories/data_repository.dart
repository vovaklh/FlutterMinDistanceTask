import 'package:shortest_way_task/domain/entities/data_wrapper.dart';

abstract class DataRepository {
  Future<DataWrapper> getData();

  Future<void> setApiBaseUrl(String url);

  String getApiUrl();
}

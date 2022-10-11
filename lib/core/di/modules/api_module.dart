import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/data/datasources/remote/api/services/data_service.dart';

@module
abstract class ApiModule {
  @lazySingleton
  Dio dioClient() {
    final client = Dio();

    client.interceptors.addAll(
      [
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );

    return client;
  }

  @lazySingleton
  DataService dataService(Dio client) {
    return DataService(client);
  }
}

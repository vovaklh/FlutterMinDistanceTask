import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shortest_way_task/data/datasources/remote/api/api_string.dart';
import 'package:shortest_way_task/data/datasources/remote/api/models/data_wrapper_model.dart';

part 'data_service.g.dart';

@RestApi()
abstract class DataService {
  factory DataService(Dio dio, {String baseUrl}) = _DataService;

  @GET(ApiString.getData)
  Future<DataWrapperModel> getData();
}

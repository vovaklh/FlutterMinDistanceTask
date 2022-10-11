import 'package:injectable/injectable.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';
import 'package:shortest_way_task/presentation/cubits/data_cubit.dart';

@module
abstract class CubitModule {
  @factoryMethod
  DataCubit dataCubit(DataRepository dataRepository) {
    return DataCubit(dataRepository: dataRepository);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/shared_prefs.dart' as _i11;
import '../../data/datasources/remote/api/models/data_model.dart' as _i7;
import '../../data/datasources/remote/api/models/data_wrapper_model.dart'
    as _i9;
import '../../data/datasources/remote/api/models/point_model.dart' as _i5;
import '../../data/datasources/remote/api/services/data_service.dart' as _i12;
import '../../domain/converters/model_converter.dart' as _i4;
import '../../domain/entities/data.dart' as _i8;
import '../../domain/entities/data_wrapper.dart' as _i10;
import '../../domain/entities/point.dart' as _i6;
import '../../domain/repositories/data_repository.dart' as _i13;
import '../../presentation/cubits/data_cubit.dart' as _i14;
import 'modules/api_module.dart' as _i15;
import 'modules/converter_module.dart' as _i16;
import 'modules/cubit_module.dart' as _i19;
import 'modules/repository_module.dart' as _i18;
import 'modules/storage_module.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  final converterModule = _$ConverterModule();
  final storageModule = _$StorageModule();
  final repositoryModule = _$RepositoryModule();
  final cubitModule = _$CubitModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dioClient());
  gh.lazySingleton<_i4.ModelConverter<_i5.PointModel, _i6.Point>>(
      () => converterModule.pointConverter());
  gh.lazySingleton<_i4.ModelConverter<_i7.DataModel, _i8.Data>>(() =>
      converterModule
          .dataConverter(get<_i4.ModelConverter<_i5.PointModel, _i6.Point>>()));
  gh.lazySingleton<_i4.ModelConverter<_i9.DataWrapperModel, _i10.DataWrapper>>(
      () => converterModule.dataWrapperConverter(
          get<_i4.ModelConverter<_i7.DataModel, _i8.Data>>()));
  await gh.lazySingletonAsync<_i11.SharedPrefs>(
    () => storageModule.sharedPrefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i12.DataService>(
      () => apiModule.dataService(get<_i3.Dio>()));
  gh.lazySingleton<_i13.DataRepository>(() => repositoryModule.dataRepository(
        get<_i11.SharedPrefs>(),
        get<_i3.Dio>(),
        get<_i12.DataService>(),
        get<_i4.ModelConverter<_i9.DataWrapperModel, _i10.DataWrapper>>(),
      ));
  gh.factory<_i14.DataCubit>(
      () => cubitModule.dataCubit(get<_i13.DataRepository>()));
  return get;
}

class _$ApiModule extends _i15.ApiModule {}

class _$ConverterModule extends _i16.ConverterModule {}

class _$StorageModule extends _i17.StorageModule {}

class _$RepositoryModule extends _i18.RepositoryModule {}

class _$CubitModule extends _i19.CubitModule {}

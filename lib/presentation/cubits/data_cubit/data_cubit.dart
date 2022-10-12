import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shortest_way_task/domain/entities/data.dart';
import 'package:shortest_way_task/domain/repositories/data_repository.dart';

part 'data_cubit.freezed.dart';
part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  final DataRepository dataRepository;

  DataCubit({required this.dataRepository}) : super(const DataState.initial());

  Future<void> loadUrl() async {
    final url = await dataRepository.getApiUrl();
    emit(DataState.successGetApiUrl(url));
  }

  Future<void> getData(String apiUrl) async {
    try {
      emit(const DataState.loading());

      await dataRepository.setApiBaseUrl(apiUrl);

      final wrapper = await dataRepository.getData();
      if (wrapper.error) {
        emit(DataState.error(wrapper.message));
      } else {
        emit(DataState.successGetData(wrapper.data));
      }
    } catch (exception) {
      emit(DataState.error(exception));
    }
  }
}

part of 'data_cubit.dart';

@freezed
class DataState with _$DataState {
  const factory DataState.initial() = _DataInitialState;
  const factory DataState.loading() = _DataLoadingState;
  const factory DataState.error(Object exception) = _DataErrorState;
  const factory DataState.successGetApiUrl(String apiUrl) =
      _DataSuccessGetApiUrlState;
  const factory DataState.successGetData(
    List<Data> data,
  ) = _DataSuccessGetDataState;
}

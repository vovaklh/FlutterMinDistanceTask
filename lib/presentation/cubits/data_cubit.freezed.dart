// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res> implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState _value;
  // ignore: unused_field
  final $Res Function(DataState) _then;
}

/// @nodoc
abstract class _$$_DataInitialStateCopyWith<$Res> {
  factory _$$_DataInitialStateCopyWith(
          _$_DataInitialState value, $Res Function(_$_DataInitialState) then) =
      __$$_DataInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataInitialStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res>
    implements _$$_DataInitialStateCopyWith<$Res> {
  __$$_DataInitialStateCopyWithImpl(
      _$_DataInitialState _value, $Res Function(_$_DataInitialState) _then)
      : super(_value, (v) => _then(v as _$_DataInitialState));

  @override
  _$_DataInitialState get _value => super._value as _$_DataInitialState;
}

/// @nodoc

class _$_DataInitialState implements _DataInitialState {
  const _$_DataInitialState();

  @override
  String toString() {
    return 'DataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DataInitialState implements DataState {
  const factory _DataInitialState() = _$_DataInitialState;
}

/// @nodoc
abstract class _$$_DataLoadingStateCopyWith<$Res> {
  factory _$$_DataLoadingStateCopyWith(
          _$_DataLoadingState value, $Res Function(_$_DataLoadingState) then) =
      __$$_DataLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataLoadingStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res>
    implements _$$_DataLoadingStateCopyWith<$Res> {
  __$$_DataLoadingStateCopyWithImpl(
      _$_DataLoadingState _value, $Res Function(_$_DataLoadingState) _then)
      : super(_value, (v) => _then(v as _$_DataLoadingState));

  @override
  _$_DataLoadingState get _value => super._value as _$_DataLoadingState;
}

/// @nodoc

class _$_DataLoadingState implements _DataLoadingState {
  const _$_DataLoadingState();

  @override
  String toString() {
    return 'DataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DataLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DataLoadingState implements DataState {
  const factory _DataLoadingState() = _$_DataLoadingState;
}

/// @nodoc
abstract class _$$_DataErrorStateCopyWith<$Res> {
  factory _$$_DataErrorStateCopyWith(
          _$_DataErrorState value, $Res Function(_$_DataErrorState) then) =
      __$$_DataErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_DataErrorStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res>
    implements _$$_DataErrorStateCopyWith<$Res> {
  __$$_DataErrorStateCopyWithImpl(
      _$_DataErrorState _value, $Res Function(_$_DataErrorState) _then)
      : super(_value, (v) => _then(v as _$_DataErrorState));

  @override
  _$_DataErrorState get _value => super._value as _$_DataErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_DataErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_DataErrorState implements _DataErrorState {
  const _$_DataErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'DataState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_DataErrorStateCopyWith<_$_DataErrorState> get copyWith =>
      __$$_DataErrorStateCopyWithImpl<_$_DataErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DataErrorState implements DataState {
  const factory _DataErrorState(final Object exception) = _$_DataErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_DataErrorStateCopyWith<_$_DataErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataSuccessGetApiUrlStateCopyWith<$Res> {
  factory _$$_DataSuccessGetApiUrlStateCopyWith(
          _$_DataSuccessGetApiUrlState value,
          $Res Function(_$_DataSuccessGetApiUrlState) then) =
      __$$_DataSuccessGetApiUrlStateCopyWithImpl<$Res>;
  $Res call({String apiUrl});
}

/// @nodoc
class __$$_DataSuccessGetApiUrlStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res>
    implements _$$_DataSuccessGetApiUrlStateCopyWith<$Res> {
  __$$_DataSuccessGetApiUrlStateCopyWithImpl(
      _$_DataSuccessGetApiUrlState _value,
      $Res Function(_$_DataSuccessGetApiUrlState) _then)
      : super(_value, (v) => _then(v as _$_DataSuccessGetApiUrlState));

  @override
  _$_DataSuccessGetApiUrlState get _value =>
      super._value as _$_DataSuccessGetApiUrlState;

  @override
  $Res call({
    Object? apiUrl = freezed,
  }) {
    return _then(_$_DataSuccessGetApiUrlState(
      apiUrl == freezed
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataSuccessGetApiUrlState implements _DataSuccessGetApiUrlState {
  const _$_DataSuccessGetApiUrlState(this.apiUrl);

  @override
  final String apiUrl;

  @override
  String toString() {
    return 'DataState.successGetApiUrl(apiUrl: $apiUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSuccessGetApiUrlState &&
            const DeepCollectionEquality().equals(other.apiUrl, apiUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apiUrl));

  @JsonKey(ignore: true)
  @override
  _$$_DataSuccessGetApiUrlStateCopyWith<_$_DataSuccessGetApiUrlState>
      get copyWith => __$$_DataSuccessGetApiUrlStateCopyWithImpl<
          _$_DataSuccessGetApiUrlState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) {
    return successGetApiUrl(apiUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) {
    return successGetApiUrl?.call(apiUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) {
    if (successGetApiUrl != null) {
      return successGetApiUrl(apiUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) {
    return successGetApiUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) {
    return successGetApiUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) {
    if (successGetApiUrl != null) {
      return successGetApiUrl(this);
    }
    return orElse();
  }
}

abstract class _DataSuccessGetApiUrlState implements DataState {
  const factory _DataSuccessGetApiUrlState(final String apiUrl) =
      _$_DataSuccessGetApiUrlState;

  String get apiUrl;
  @JsonKey(ignore: true)
  _$$_DataSuccessGetApiUrlStateCopyWith<_$_DataSuccessGetApiUrlState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataSuccessGetDataStateCopyWith<$Res> {
  factory _$$_DataSuccessGetDataStateCopyWith(_$_DataSuccessGetDataState value,
          $Res Function(_$_DataSuccessGetDataState) then) =
      __$$_DataSuccessGetDataStateCopyWithImpl<$Res>;
  $Res call({List<Data> data});
}

/// @nodoc
class __$$_DataSuccessGetDataStateCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res>
    implements _$$_DataSuccessGetDataStateCopyWith<$Res> {
  __$$_DataSuccessGetDataStateCopyWithImpl(_$_DataSuccessGetDataState _value,
      $Res Function(_$_DataSuccessGetDataState) _then)
      : super(_value, (v) => _then(v as _$_DataSuccessGetDataState));

  @override
  _$_DataSuccessGetDataState get _value =>
      super._value as _$_DataSuccessGetDataState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_DataSuccessGetDataState(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc

class _$_DataSuccessGetDataState implements _DataSuccessGetDataState {
  const _$_DataSuccessGetDataState(final List<Data> data) : _data = data;

  final List<Data> _data;
  @override
  List<Data> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataState.successGetData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSuccessGetDataState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_DataSuccessGetDataStateCopyWith<_$_DataSuccessGetDataState>
      get copyWith =>
          __$$_DataSuccessGetDataStateCopyWithImpl<_$_DataSuccessGetDataState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(String apiUrl) successGetApiUrl,
    required TResult Function(List<Data> data) successGetData,
  }) {
    return successGetData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
  }) {
    return successGetData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(String apiUrl)? successGetApiUrl,
    TResult Function(List<Data> data)? successGetData,
    required TResult orElse(),
  }) {
    if (successGetData != null) {
      return successGetData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialState value) initial,
    required TResult Function(_DataLoadingState value) loading,
    required TResult Function(_DataErrorState value) error,
    required TResult Function(_DataSuccessGetApiUrlState value)
        successGetApiUrl,
    required TResult Function(_DataSuccessGetDataState value) successGetData,
  }) {
    return successGetData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
  }) {
    return successGetData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialState value)? initial,
    TResult Function(_DataLoadingState value)? loading,
    TResult Function(_DataErrorState value)? error,
    TResult Function(_DataSuccessGetApiUrlState value)? successGetApiUrl,
    TResult Function(_DataSuccessGetDataState value)? successGetData,
    required TResult orElse(),
  }) {
    if (successGetData != null) {
      return successGetData(this);
    }
    return orElse();
  }
}

abstract class _DataSuccessGetDataState implements DataState {
  const factory _DataSuccessGetDataState(final List<Data> data) =
      _$_DataSuccessGetDataState;

  List<Data> get data;
  @JsonKey(ignore: true)
  _$$_DataSuccessGetDataStateCopyWith<_$_DataSuccessGetDataState>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataWrapperModel _$DataWrapperModelFromJson(Map<String, dynamic> json) {
  return _DataWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$DataWrapperModel {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<DataModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataWrapperModelCopyWith<DataWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWrapperModelCopyWith<$Res> {
  factory $DataWrapperModelCopyWith(
          DataWrapperModel value, $Res Function(DataWrapperModel) then) =
      _$DataWrapperModelCopyWithImpl<$Res>;
  $Res call({bool error, String message, List<DataModel> data});
}

/// @nodoc
class _$DataWrapperModelCopyWithImpl<$Res>
    implements $DataWrapperModelCopyWith<$Res> {
  _$DataWrapperModelCopyWithImpl(this._value, this._then);

  final DataWrapperModel _value;
  // ignore: unused_field
  final $Res Function(DataWrapperModel) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_DataWrapperModelCopyWith<$Res>
    implements $DataWrapperModelCopyWith<$Res> {
  factory _$$_DataWrapperModelCopyWith(
          _$_DataWrapperModel value, $Res Function(_$_DataWrapperModel) then) =
      __$$_DataWrapperModelCopyWithImpl<$Res>;
  @override
  $Res call({bool error, String message, List<DataModel> data});
}

/// @nodoc
class __$$_DataWrapperModelCopyWithImpl<$Res>
    extends _$DataWrapperModelCopyWithImpl<$Res>
    implements _$$_DataWrapperModelCopyWith<$Res> {
  __$$_DataWrapperModelCopyWithImpl(
      _$_DataWrapperModel _value, $Res Function(_$_DataWrapperModel) _then)
      : super(_value, (v) => _then(v as _$_DataWrapperModel));

  @override
  _$_DataWrapperModel get _value => super._value as _$_DataWrapperModel;

  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DataWrapperModel(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataWrapperModel extends _DataWrapperModel {
  const _$_DataWrapperModel(
      {required this.error,
      required this.message,
      required final List<DataModel> data})
      : _data = data,
        super._();

  factory _$_DataWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataWrapperModelFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<DataModel> _data;
  @override
  List<DataModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataWrapperModel(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataWrapperModel &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_DataWrapperModelCopyWith<_$_DataWrapperModel> get copyWith =>
      __$$_DataWrapperModelCopyWithImpl<_$_DataWrapperModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataWrapperModelToJson(
      this,
    );
  }
}

abstract class _DataWrapperModel extends DataWrapperModel {
  const factory _DataWrapperModel(
      {required final bool error,
      required final String message,
      required final List<DataModel> data}) = _$_DataWrapperModel;
  const _DataWrapperModel._() : super._();

  factory _DataWrapperModel.fromJson(Map<String, dynamic> json) =
      _$_DataWrapperModel.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<DataModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataWrapperModelCopyWith<_$_DataWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

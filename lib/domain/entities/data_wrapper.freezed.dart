// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataWrapper {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Data> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataWrapperCopyWith<DataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataWrapperCopyWith<$Res> {
  factory $DataWrapperCopyWith(
          DataWrapper value, $Res Function(DataWrapper) then) =
      _$DataWrapperCopyWithImpl<$Res>;
  $Res call({bool error, String message, List<Data> data});
}

/// @nodoc
class _$DataWrapperCopyWithImpl<$Res> implements $DataWrapperCopyWith<$Res> {
  _$DataWrapperCopyWithImpl(this._value, this._then);

  final DataWrapper _value;
  // ignore: unused_field
  final $Res Function(DataWrapper) _then;

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
              as List<Data>,
    ));
  }
}

/// @nodoc
abstract class _$$_DataWrapperCopyWith<$Res>
    implements $DataWrapperCopyWith<$Res> {
  factory _$$_DataWrapperCopyWith(
          _$_DataWrapper value, $Res Function(_$_DataWrapper) then) =
      __$$_DataWrapperCopyWithImpl<$Res>;
  @override
  $Res call({bool error, String message, List<Data> data});
}

/// @nodoc
class __$$_DataWrapperCopyWithImpl<$Res> extends _$DataWrapperCopyWithImpl<$Res>
    implements _$$_DataWrapperCopyWith<$Res> {
  __$$_DataWrapperCopyWithImpl(
      _$_DataWrapper _value, $Res Function(_$_DataWrapper) _then)
      : super(_value, (v) => _then(v as _$_DataWrapper));

  @override
  _$_DataWrapper get _value => super._value as _$_DataWrapper;

  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DataWrapper(
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
              as List<Data>,
    ));
  }
}

/// @nodoc

class _$_DataWrapper extends _DataWrapper {
  const _$_DataWrapper(
      {required this.error,
      required this.message,
      required final List<Data> data})
      : _data = data,
        super._();

  @override
  final bool error;
  @override
  final String message;
  final List<Data> _data;
  @override
  List<Data> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataWrapper(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataWrapper &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_DataWrapperCopyWith<_$_DataWrapper> get copyWith =>
      __$$_DataWrapperCopyWithImpl<_$_DataWrapper>(this, _$identity);
}

abstract class _DataWrapper extends DataWrapper {
  const factory _DataWrapper(
      {required final bool error,
      required final String message,
      required final List<Data> data}) = _$_DataWrapper;
  const _DataWrapper._() : super._();

  @override
  bool get error;
  @override
  String get message;
  @override
  List<Data> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataWrapperCopyWith<_$_DataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

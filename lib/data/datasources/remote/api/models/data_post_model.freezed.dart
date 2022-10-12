// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataPostModel _$DataPostModelFromJson(Map<String, dynamic> json) {
  return _DataPostModel.fromJson(json);
}

/// @nodoc
mixin _$DataPostModel {
  String get id => throw _privateConstructorUsedError;
  StepsModel get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPostModelCopyWith<DataPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPostModelCopyWith<$Res> {
  factory $DataPostModelCopyWith(
          DataPostModel value, $Res Function(DataPostModel) then) =
      _$DataPostModelCopyWithImpl<$Res>;
  $Res call({String id, StepsModel result});

  $StepsModelCopyWith<$Res> get result;
}

/// @nodoc
class _$DataPostModelCopyWithImpl<$Res>
    implements $DataPostModelCopyWith<$Res> {
  _$DataPostModelCopyWithImpl(this._value, this._then);

  final DataPostModel _value;
  // ignore: unused_field
  final $Res Function(DataPostModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StepsModel,
    ));
  }

  @override
  $StepsModelCopyWith<$Res> get result {
    return $StepsModelCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataPostModelCopyWith<$Res>
    implements $DataPostModelCopyWith<$Res> {
  factory _$$_DataPostModelCopyWith(
          _$_DataPostModel value, $Res Function(_$_DataPostModel) then) =
      __$$_DataPostModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, StepsModel result});

  @override
  $StepsModelCopyWith<$Res> get result;
}

/// @nodoc
class __$$_DataPostModelCopyWithImpl<$Res>
    extends _$DataPostModelCopyWithImpl<$Res>
    implements _$$_DataPostModelCopyWith<$Res> {
  __$$_DataPostModelCopyWithImpl(
      _$_DataPostModel _value, $Res Function(_$_DataPostModel) _then)
      : super(_value, (v) => _then(v as _$_DataPostModel));

  @override
  _$_DataPostModel get _value => super._value as _$_DataPostModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_DataPostModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StepsModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_DataPostModel extends _DataPostModel {
  const _$_DataPostModel({required this.id, required this.result}) : super._();

  factory _$_DataPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataPostModelFromJson(json);

  @override
  final String id;
  @override
  final StepsModel result;

  @override
  String toString() {
    return 'DataPostModel(id: $id, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataPostModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_DataPostModelCopyWith<_$_DataPostModel> get copyWith =>
      __$$_DataPostModelCopyWithImpl<_$_DataPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataPostModelToJson(
      this,
    );
  }
}

abstract class _DataPostModel extends DataPostModel {
  const factory _DataPostModel(
      {required final String id,
      required final StepsModel result}) = _$_DataPostModel;
  const _DataPostModel._() : super._();

  factory _DataPostModel.fromJson(Map<String, dynamic> json) =
      _$_DataPostModel.fromJson;

  @override
  String get id;
  @override
  StepsModel get result;
  @override
  @JsonKey(ignore: true)
  _$$_DataPostModelCopyWith<_$_DataPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

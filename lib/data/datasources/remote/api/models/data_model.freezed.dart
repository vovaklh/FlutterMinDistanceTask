// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  String get id => throw _privateConstructorUsedError;
  List<String> get field => throw _privateConstructorUsedError;
  PointModel get start => throw _privateConstructorUsedError;
  PointModel get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res>;
  $Res call({String id, List<String> field, PointModel start, PointModel end});

  $PointModelCopyWith<$Res> get start;
  $PointModelCopyWith<$Res> get end;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res> implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  final DataModel _value;
  // ignore: unused_field
  final $Res Function(DataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as PointModel,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as PointModel,
    ));
  }

  @override
  $PointModelCopyWith<$Res> get start {
    return $PointModelCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $PointModelCopyWith<$Res> get end {
    return $PointModelCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$$_DataModelCopyWith(
          _$_DataModel value, $Res Function(_$_DataModel) then) =
      __$$_DataModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<String> field, PointModel start, PointModel end});

  @override
  $PointModelCopyWith<$Res> get start;
  @override
  $PointModelCopyWith<$Res> get end;
}

/// @nodoc
class __$$_DataModelCopyWithImpl<$Res> extends _$DataModelCopyWithImpl<$Res>
    implements _$$_DataModelCopyWith<$Res> {
  __$$_DataModelCopyWithImpl(
      _$_DataModel _value, $Res Function(_$_DataModel) _then)
      : super(_value, (v) => _then(v as _$_DataModel));

  @override
  _$_DataModel get _value => super._value as _$_DataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? field = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_DataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      field: field == freezed
          ? _value._field
          : field // ignore: cast_nullable_to_non_nullable
              as List<String>,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as PointModel,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as PointModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataModel extends _DataModel {
  const _$_DataModel(
      {required this.id,
      required final List<String> field,
      required this.start,
      required this.end})
      : _field = field,
        super._();

  factory _$_DataModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataModelFromJson(json);

  @override
  final String id;
  final List<String> _field;
  @override
  List<String> get field {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_field);
  }

  @override
  final PointModel start;
  @override
  final PointModel end;

  @override
  String toString() {
    return 'DataModel(id: $id, field: $field, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._field, _field) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_field),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end));

  @JsonKey(ignore: true)
  @override
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      __$$_DataModelCopyWithImpl<_$_DataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataModelToJson(
      this,
    );
  }
}

abstract class _DataModel extends DataModel {
  const factory _DataModel(
      {required final String id,
      required final List<String> field,
      required final PointModel start,
      required final PointModel end}) = _$_DataModel;
  const _DataModel._() : super._();

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$_DataModel.fromJson;

  @override
  String get id;
  @override
  List<String> get field;
  @override
  PointModel get start;
  @override
  PointModel get end;
  @override
  @JsonKey(ignore: true)
  _$$_DataModelCopyWith<_$_DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

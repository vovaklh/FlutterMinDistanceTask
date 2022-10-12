// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointPostModel _$PointPostModelFromJson(Map<String, dynamic> json) {
  return _PointPostModel.fromJson(json);
}

/// @nodoc
mixin _$PointPostModel {
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointPostModelCopyWith<PointPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointPostModelCopyWith<$Res> {
  factory $PointPostModelCopyWith(
          PointPostModel value, $Res Function(PointPostModel) then) =
      _$PointPostModelCopyWithImpl<$Res>;
  $Res call({String x, String y});
}

/// @nodoc
class _$PointPostModelCopyWithImpl<$Res>
    implements $PointPostModelCopyWith<$Res> {
  _$PointPostModelCopyWithImpl(this._value, this._then);

  final PointPostModel _value;
  // ignore: unused_field
  final $Res Function(PointPostModel) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PointPostModelCopyWith<$Res>
    implements $PointPostModelCopyWith<$Res> {
  factory _$$_PointPostModelCopyWith(
          _$_PointPostModel value, $Res Function(_$_PointPostModel) then) =
      __$$_PointPostModelCopyWithImpl<$Res>;
  @override
  $Res call({String x, String y});
}

/// @nodoc
class __$$_PointPostModelCopyWithImpl<$Res>
    extends _$PointPostModelCopyWithImpl<$Res>
    implements _$$_PointPostModelCopyWith<$Res> {
  __$$_PointPostModelCopyWithImpl(
      _$_PointPostModel _value, $Res Function(_$_PointPostModel) _then)
      : super(_value, (v) => _then(v as _$_PointPostModel));

  @override
  _$_PointPostModel get _value => super._value as _$_PointPostModel;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_PointPostModel(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointPostModel extends _PointPostModel {
  const _$_PointPostModel({required this.x, required this.y}) : super._();

  factory _$_PointPostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PointPostModelFromJson(json);

  @override
  final String x;
  @override
  final String y;

  @override
  String toString() {
    return 'PointPostModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointPostModel &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$$_PointPostModelCopyWith<_$_PointPostModel> get copyWith =>
      __$$_PointPostModelCopyWithImpl<_$_PointPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointPostModelToJson(
      this,
    );
  }
}

abstract class _PointPostModel extends PointPostModel {
  const factory _PointPostModel(
      {required final String x, required final String y}) = _$_PointPostModel;
  const _PointPostModel._() : super._();

  factory _PointPostModel.fromJson(Map<String, dynamic> json) =
      _$_PointPostModel.fromJson;

  @override
  String get x;
  @override
  String get y;
  @override
  @JsonKey(ignore: true)
  _$$_PointPostModelCopyWith<_$_PointPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

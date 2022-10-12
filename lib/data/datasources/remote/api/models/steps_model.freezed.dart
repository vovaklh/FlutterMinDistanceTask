// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'steps_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepsModel _$StepsModelFromJson(Map<String, dynamic> json) {
  return _StepsModel.fromJson(json);
}

/// @nodoc
mixin _$StepsModel {
  List<PointPostModel> get steps => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepsModelCopyWith<StepsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsModelCopyWith<$Res> {
  factory $StepsModelCopyWith(
          StepsModel value, $Res Function(StepsModel) then) =
      _$StepsModelCopyWithImpl<$Res>;
  $Res call({List<PointPostModel> steps, String path});
}

/// @nodoc
class _$StepsModelCopyWithImpl<$Res> implements $StepsModelCopyWith<$Res> {
  _$StepsModelCopyWithImpl(this._value, this._then);

  final StepsModel _value;
  // ignore: unused_field
  final $Res Function(StepsModel) _then;

  @override
  $Res call({
    Object? steps = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      steps: steps == freezed
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<PointPostModel>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StepsModelCopyWith<$Res>
    implements $StepsModelCopyWith<$Res> {
  factory _$$_StepsModelCopyWith(
          _$_StepsModel value, $Res Function(_$_StepsModel) then) =
      __$$_StepsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<PointPostModel> steps, String path});
}

/// @nodoc
class __$$_StepsModelCopyWithImpl<$Res> extends _$StepsModelCopyWithImpl<$Res>
    implements _$$_StepsModelCopyWith<$Res> {
  __$$_StepsModelCopyWithImpl(
      _$_StepsModel _value, $Res Function(_$_StepsModel) _then)
      : super(_value, (v) => _then(v as _$_StepsModel));

  @override
  _$_StepsModel get _value => super._value as _$_StepsModel;

  @override
  $Res call({
    Object? steps = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_StepsModel(
      steps: steps == freezed
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<PointPostModel>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_StepsModel extends _StepsModel {
  const _$_StepsModel(
      {required final List<PointPostModel> steps, required this.path})
      : _steps = steps,
        super._();

  factory _$_StepsModel.fromJson(Map<String, dynamic> json) =>
      _$$_StepsModelFromJson(json);

  final List<PointPostModel> _steps;
  @override
  List<PointPostModel> get steps {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final String path;

  @override
  String toString() {
    return 'StepsModel(steps: $steps, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepsModel &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_steps),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$_StepsModelCopyWith<_$_StepsModel> get copyWith =>
      __$$_StepsModelCopyWithImpl<_$_StepsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepsModelToJson(
      this,
    );
  }
}

abstract class _StepsModel extends StepsModel {
  const factory _StepsModel(
      {required final List<PointPostModel> steps,
      required final String path}) = _$_StepsModel;
  const _StepsModel._() : super._();

  factory _StepsModel.fromJson(Map<String, dynamic> json) =
      _$_StepsModel.fromJson;

  @override
  List<PointPostModel> get steps;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_StepsModelCopyWith<_$_StepsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

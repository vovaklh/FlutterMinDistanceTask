// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'process_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProcessState {
  Map<Data, Queue<Point>> get solutions => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  ProcessStatus get status => throw _privateConstructorUsedError;
  Object get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProcessStateCopyWith<ProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessStateCopyWith<$Res> {
  factory $ProcessStateCopyWith(
          ProcessState value, $Res Function(ProcessState) then) =
      _$ProcessStateCopyWithImpl<$Res>;
  $Res call(
      {Map<Data, Queue<Point>> solutions,
      double progress,
      ProcessStatus status,
      Object exception});
}

/// @nodoc
class _$ProcessStateCopyWithImpl<$Res> implements $ProcessStateCopyWith<$Res> {
  _$ProcessStateCopyWithImpl(this._value, this._then);

  final ProcessState _value;
  // ignore: unused_field
  final $Res Function(ProcessState) _then;

  @override
  $Res call({
    Object? solutions = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      solutions: solutions == freezed
          ? _value.solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as Map<Data, Queue<Point>>,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc
abstract class _$$_ProcessStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory _$$_ProcessStateCopyWith(
          _$_ProcessState value, $Res Function(_$_ProcessState) then) =
      __$$_ProcessStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<Data, Queue<Point>> solutions,
      double progress,
      ProcessStatus status,
      Object exception});
}

/// @nodoc
class __$$_ProcessStateCopyWithImpl<$Res>
    extends _$ProcessStateCopyWithImpl<$Res>
    implements _$$_ProcessStateCopyWith<$Res> {
  __$$_ProcessStateCopyWithImpl(
      _$_ProcessState _value, $Res Function(_$_ProcessState) _then)
      : super(_value, (v) => _then(v as _$_ProcessState));

  @override
  _$_ProcessState get _value => super._value as _$_ProcessState;

  @override
  $Res call({
    Object? solutions = freezed,
    Object? progress = freezed,
    Object? status = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$_ProcessState(
      solutions == freezed
          ? _value._solutions
          : solutions // ignore: cast_nullable_to_non_nullable
              as Map<Data, Queue<Point>>,
      progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStatus,
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_ProcessState implements _ProcessState {
  const _$_ProcessState(
      [final Map<Data, Queue<Point>> solutions = const {},
      this.progress = 0,
      this.status = ProcessStatus.initial,
      this.exception = ""])
      : _solutions = solutions;

  final Map<Data, Queue<Point>> _solutions;
  @override
  @JsonKey()
  Map<Data, Queue<Point>> get solutions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_solutions);
  }

  @override
  @JsonKey()
  final double progress;
  @override
  @JsonKey()
  final ProcessStatus status;
  @override
  @JsonKey()
  final Object exception;

  @override
  String toString() {
    return 'ProcessState(solutions: $solutions, progress: $progress, status: $status, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessState &&
            const DeepCollectionEquality()
                .equals(other._solutions, _solutions) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_solutions),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_ProcessStateCopyWith<_$_ProcessState> get copyWith =>
      __$$_ProcessStateCopyWithImpl<_$_ProcessState>(this, _$identity);
}

abstract class _ProcessState implements ProcessState {
  const factory _ProcessState(
      [final Map<Data, Queue<Point>> solutions,
      final double progress,
      final ProcessStatus status,
      final Object exception]) = _$_ProcessState;

  @override
  Map<Data, Queue<Point>> get solutions;
  @override
  double get progress;
  @override
  ProcessStatus get status;
  @override
  Object get exception;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessStateCopyWith<_$_ProcessState> get copyWith =>
      throw _privateConstructorUsedError;
}

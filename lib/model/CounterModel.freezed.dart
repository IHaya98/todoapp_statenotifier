// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'CounterModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterModelTearOff {
  const _$CounterModelTearOff();

  _CounterModel call({int count = 0, bool isEnabled = false}) {
    return _CounterModel(
      count: count,
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $CounterModel = _$CounterModelTearOff();

/// @nodoc
mixin _$CounterModel {
  int get count => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterModelCopyWith<CounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterModelCopyWith<$Res> {
  factory $CounterModelCopyWith(
          CounterModel value, $Res Function(CounterModel) then) =
      _$CounterModelCopyWithImpl<$Res>;
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class _$CounterModelCopyWithImpl<$Res> implements $CounterModelCopyWith<$Res> {
  _$CounterModelCopyWithImpl(this._value, this._then);

  final CounterModel _value;
  // ignore: unused_field
  final $Res Function(CounterModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CounterModelCopyWith<$Res>
    implements $CounterModelCopyWith<$Res> {
  factory _$CounterModelCopyWith(
          _CounterModel value, $Res Function(_CounterModel) then) =
      __$CounterModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class __$CounterModelCopyWithImpl<$Res> extends _$CounterModelCopyWithImpl<$Res>
    implements _$CounterModelCopyWith<$Res> {
  __$CounterModelCopyWithImpl(
      _CounterModel _value, $Res Function(_CounterModel) _then)
      : super(_value, (v) => _then(v as _CounterModel));

  @override
  _CounterModel get _value => super._value as _CounterModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_CounterModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CounterModel implements _CounterModel {
  const _$_CounterModel({this.count = 0, this.isEnabled = false});

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'CounterModel(count: $count, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterModel &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.isEnabled, isEnabled) ||
                const DeepCollectionEquality()
                    .equals(other.isEnabled, isEnabled)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(isEnabled);

  @JsonKey(ignore: true)
  @override
  _$CounterModelCopyWith<_CounterModel> get copyWith =>
      __$CounterModelCopyWithImpl<_CounterModel>(this, _$identity);
}

abstract class _CounterModel implements CounterModel {
  const factory _CounterModel({int count, bool isEnabled}) = _$_CounterModel;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounterModelCopyWith<_CounterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

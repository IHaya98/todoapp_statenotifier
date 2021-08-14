// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterTearOff {
  const _$CounterTearOff();

  _Counter call({int count = 0, bool isEnabled = false}) {
    return _Counter(
      count: count,
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $Counter = _$CounterTearOff();

/// @nodoc
mixin _$Counter {
  int get count => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterCopyWith<Counter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterCopyWith<$Res> {
  factory $CounterCopyWith(Counter value, $Res Function(Counter) then) =
      _$CounterCopyWithImpl<$Res>;
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class _$CounterCopyWithImpl<$Res> implements $CounterCopyWith<$Res> {
  _$CounterCopyWithImpl(this._value, this._then);

  final Counter _value;
  // ignore: unused_field
  final $Res Function(Counter) _then;

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
abstract class _$CounterCopyWith<$Res> implements $CounterCopyWith<$Res> {
  factory _$CounterCopyWith(_Counter value, $Res Function(_Counter) then) =
      __$CounterCopyWithImpl<$Res>;
  @override
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class __$CounterCopyWithImpl<$Res> extends _$CounterCopyWithImpl<$Res>
    implements _$CounterCopyWith<$Res> {
  __$CounterCopyWithImpl(_Counter _value, $Res Function(_Counter) _then)
      : super(_value, (v) => _then(v as _Counter));

  @override
  _Counter get _value => super._value as _Counter;

  @override
  $Res call({
    Object? count = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_Counter(
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

class _$_Counter implements _Counter {
  const _$_Counter({this.count = 0, this.isEnabled = false});

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: false)
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'Counter(count: $count, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Counter &&
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
  _$CounterCopyWith<_Counter> get copyWith =>
      __$CounterCopyWithImpl<_Counter>(this, _$identity);
}

abstract class _Counter implements Counter {
  const factory _Counter({int count, bool isEnabled}) = _$_Counter;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  bool get isEnabled => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CounterCopyWith<_Counter> get copyWith =>
      throw _privateConstructorUsedError;
}

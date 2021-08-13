// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'MyThemeModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyThemeModelTearOff {
  const _$MyThemeModelTearOff();

  _MyThemeModel call({ThemeData? current, bool isDark = false}) {
    return _MyThemeModel(
      current: current,
      isDark: isDark,
    );
  }
}

/// @nodoc
const $MyThemeModel = _$MyThemeModelTearOff();

/// @nodoc
mixin _$MyThemeModel {
  ThemeData? get current => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyThemeModelCopyWith<MyThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyThemeModelCopyWith<$Res> {
  factory $MyThemeModelCopyWith(
          MyThemeModel value, $Res Function(MyThemeModel) then) =
      _$MyThemeModelCopyWithImpl<$Res>;
  $Res call({ThemeData? current, bool isDark});
}

/// @nodoc
class _$MyThemeModelCopyWithImpl<$Res> implements $MyThemeModelCopyWith<$Res> {
  _$MyThemeModelCopyWithImpl(this._value, this._then);

  final MyThemeModel _value;
  // ignore: unused_field
  final $Res Function(MyThemeModel) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? isDark = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MyThemeModelCopyWith<$Res>
    implements $MyThemeModelCopyWith<$Res> {
  factory _$MyThemeModelCopyWith(
          _MyThemeModel value, $Res Function(_MyThemeModel) then) =
      __$MyThemeModelCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData? current, bool isDark});
}

/// @nodoc
class __$MyThemeModelCopyWithImpl<$Res> extends _$MyThemeModelCopyWithImpl<$Res>
    implements _$MyThemeModelCopyWith<$Res> {
  __$MyThemeModelCopyWithImpl(
      _MyThemeModel _value, $Res Function(_MyThemeModel) _then)
      : super(_value, (v) => _then(v as _MyThemeModel));

  @override
  _MyThemeModel get _value => super._value as _MyThemeModel;

  @override
  $Res call({
    Object? current = freezed,
    Object? isDark = freezed,
  }) {
    return _then(_MyThemeModel(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MyThemeModel implements _MyThemeModel {
  const _$_MyThemeModel({this.current, this.isDark = false});

  @override
  final ThemeData? current;
  @JsonKey(defaultValue: false)
  @override
  final bool isDark;

  @override
  String toString() {
    return 'MyThemeModel(current: $current, isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyThemeModel &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.isDark, isDark) ||
                const DeepCollectionEquality().equals(other.isDark, isDark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(isDark);

  @JsonKey(ignore: true)
  @override
  _$MyThemeModelCopyWith<_MyThemeModel> get copyWith =>
      __$MyThemeModelCopyWithImpl<_MyThemeModel>(this, _$identity);
}

abstract class _MyThemeModel implements MyThemeModel {
  const factory _MyThemeModel({ThemeData? current, bool isDark}) =
      _$_MyThemeModel;

  @override
  ThemeData? get current => throw _privateConstructorUsedError;
  @override
  bool get isDark => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyThemeModelCopyWith<_MyThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

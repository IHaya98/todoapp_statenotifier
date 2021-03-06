// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeTearOff {
  const _$HomeTearOff();

  _Home call({String title = '', String detail = '', bool isFavorite = false}) {
    return _Home(
      title: title,
      detail: detail,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
const $Home = _$HomeTearOff();

/// @nodoc
mixin _$Home {
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res>;
  $Res call({String title, String detail, bool isFavorite});
}

/// @nodoc
class _$HomeCopyWithImpl<$Res> implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  final Home _value;
  // ignore: unused_field
  final $Res Function(Home) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? detail = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) then) =
      __$HomeCopyWithImpl<$Res>;
  @override
  $Res call({String title, String detail, bool isFavorite});
}

/// @nodoc
class __$HomeCopyWithImpl<$Res> extends _$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(_Home _value, $Res Function(_Home) _then)
      : super(_value, (v) => _then(v as _Home));

  @override
  _Home get _value => super._value as _Home;

  @override
  $Res call({
    Object? title = freezed,
    Object? detail = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_Home(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Home implements _Home {
  const _$_Home({this.title = '', this.detail = '', this.isFavorite = false});

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String detail;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Home(title: $title, detail: $detail, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Home &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(isFavorite);

  @JsonKey(ignore: true)
  @override
  _$HomeCopyWith<_Home> get copyWith =>
      __$HomeCopyWithImpl<_Home>(this, _$identity);
}

abstract class _Home implements Home {
  const factory _Home({String title, String detail, bool isFavorite}) = _$_Home;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeCopyWith<_Home> get copyWith => throw _privateConstructorUsedError;
}

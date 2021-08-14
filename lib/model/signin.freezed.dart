// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'signin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SigninTearOff {
  const _$SigninTearOff();

  _Signin call({String email = '', String password = ''}) {
    return _Signin(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $Signin = _$SigninTearOff();

/// @nodoc
mixin _$Signin {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninCopyWith<Signin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninCopyWith<$Res> {
  factory $SigninCopyWith(Signin value, $Res Function(Signin) then) =
      _$SigninCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SigninCopyWithImpl<$Res> implements $SigninCopyWith<$Res> {
  _$SigninCopyWithImpl(this._value, this._then);

  final Signin _value;
  // ignore: unused_field
  final $Res Function(Signin) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SigninCopyWith<$Res> implements $SigninCopyWith<$Res> {
  factory _$SigninCopyWith(_Signin value, $Res Function(_Signin) then) =
      __$SigninCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$SigninCopyWithImpl<$Res> extends _$SigninCopyWithImpl<$Res>
    implements _$SigninCopyWith<$Res> {
  __$SigninCopyWithImpl(_Signin _value, $Res Function(_Signin) _then)
      : super(_value, (v) => _then(v as _Signin));

  @override
  _Signin get _value => super._value as _Signin;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_Signin(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Signin implements _Signin {
  const _$_Signin({this.email = '', this.password = ''});

  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString() {
    return 'Signin(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Signin &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SigninCopyWith<_Signin> get copyWith =>
      __$SigninCopyWithImpl<_Signin>(this, _$identity);
}

abstract class _Signin implements Signin {
  const factory _Signin({String email, String password}) = _$_Signin;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SigninCopyWith<_Signin> get copyWith => throw _privateConstructorUsedError;
}

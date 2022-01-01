// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'signup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupTearOff {
  const _$SignupTearOff();

  _Signup call(
      {String email = '', String username = '', String password = ''}) {
    return _Signup(
      email: email,
      username: username,
      password: password,
    );
  }
}

/// @nodoc
const $Signup = _$SignupTearOff();

/// @nodoc
mixin _$Signup {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupCopyWith<Signup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupCopyWith<$Res> {
  factory $SignupCopyWith(Signup value, $Res Function(Signup) then) =
      _$SignupCopyWithImpl<$Res>;
  $Res call({String email, String username, String password});
}

/// @nodoc
class _$SignupCopyWithImpl<$Res> implements $SignupCopyWith<$Res> {
  _$SignupCopyWithImpl(this._value, this._then);

  final Signup _value;
  // ignore: unused_field
  final $Res Function(Signup) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignupCopyWith<$Res> implements $SignupCopyWith<$Res> {
  factory _$SignupCopyWith(_Signup value, $Res Function(_Signup) then) =
      __$SignupCopyWithImpl<$Res>;
  @override
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$SignupCopyWithImpl<$Res> extends _$SignupCopyWithImpl<$Res>
    implements _$SignupCopyWith<$Res> {
  __$SignupCopyWithImpl(_Signup _value, $Res Function(_Signup) _then)
      : super(_value, (v) => _then(v as _Signup));

  @override
  _Signup get _value => super._value as _Signup;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_Signup(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Signup implements _Signup {
  const _$_Signup({this.email = '', this.username = '', this.password = ''});

  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String username;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString() {
    return 'Signup(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Signup &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignupCopyWith<_Signup> get copyWith =>
      __$SignupCopyWithImpl<_Signup>(this, _$identity);
}

abstract class _Signup implements Signup {
  const factory _Signup({String email, String username, String password}) =
      _$_Signup;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignupCopyWith<_Signup> get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'SignupModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupModelTearOff {
  const _$SignupModelTearOff();

  _SignupModel call(
      {String email = '', String user_name = '', String password = ''}) {
    return _SignupModel(
      email: email,
      user_name: user_name,
      password: password,
    );
  }
}

/// @nodoc
const $SignupModel = _$SignupModelTearOff();

/// @nodoc
mixin _$SignupModel {
  String get email => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupModelCopyWith<SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupModelCopyWith<$Res> {
  factory $SignupModelCopyWith(
          SignupModel value, $Res Function(SignupModel) then) =
      _$SignupModelCopyWithImpl<$Res>;
  $Res call({String email, String user_name, String password});
}

/// @nodoc
class _$SignupModelCopyWithImpl<$Res> implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._value, this._then);

  final SignupModel _value;
  // ignore: unused_field
  final $Res Function(SignupModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? user_name = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: user_name == freezed
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignupModelCopyWith<$Res>
    implements $SignupModelCopyWith<$Res> {
  factory _$SignupModelCopyWith(
          _SignupModel value, $Res Function(_SignupModel) then) =
      __$SignupModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String user_name, String password});
}

/// @nodoc
class __$SignupModelCopyWithImpl<$Res> extends _$SignupModelCopyWithImpl<$Res>
    implements _$SignupModelCopyWith<$Res> {
  __$SignupModelCopyWithImpl(
      _SignupModel _value, $Res Function(_SignupModel) _then)
      : super(_value, (v) => _then(v as _SignupModel));

  @override
  _SignupModel get _value => super._value as _SignupModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? user_name = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignupModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: user_name == freezed
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignupModel implements _SignupModel {
  const _$_SignupModel(
      {this.email = '', this.user_name = '', this.password = ''});

  @JsonKey(defaultValue: '')
  @override
  final String email;
  @JsonKey(defaultValue: '')
  @override
  final String user_name;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString() {
    return 'SignupModel(email: $email, user_name: $user_name, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignupModel &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.user_name, user_name) ||
                const DeepCollectionEquality()
                    .equals(other.user_name, user_name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(user_name) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$SignupModelCopyWith<_SignupModel> get copyWith =>
      __$SignupModelCopyWithImpl<_SignupModel>(this, _$identity);
}

abstract class _SignupModel implements SignupModel {
  const factory _SignupModel(
      {String email, String user_name, String password}) = _$_SignupModel;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get user_name => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignupModelCopyWith<_SignupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

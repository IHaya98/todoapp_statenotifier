// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosTearOff {
  const _$TodosTearOff();

  _Todos call({List<Home> todos = const <Home>[]}) {
    return _Todos(
      todos: todos,
    );
  }
}

/// @nodoc
const $Todos = _$TodosTearOff();

/// @nodoc
mixin _$Todos {
  List<Home> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosCopyWith<Todos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosCopyWith<$Res> {
  factory $TodosCopyWith(Todos value, $Res Function(Todos) then) =
      _$TodosCopyWithImpl<$Res>;
  $Res call({List<Home> todos});
}

/// @nodoc
class _$TodosCopyWithImpl<$Res> implements $TodosCopyWith<$Res> {
  _$TodosCopyWithImpl(this._value, this._then);

  final Todos _value;
  // ignore: unused_field
  final $Res Function(Todos) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc
abstract class _$TodosCopyWith<$Res> implements $TodosCopyWith<$Res> {
  factory _$TodosCopyWith(_Todos value, $Res Function(_Todos) then) =
      __$TodosCopyWithImpl<$Res>;
  @override
  $Res call({List<Home> todos});
}

/// @nodoc
class __$TodosCopyWithImpl<$Res> extends _$TodosCopyWithImpl<$Res>
    implements _$TodosCopyWith<$Res> {
  __$TodosCopyWithImpl(_Todos _value, $Res Function(_Todos) _then)
      : super(_value, (v) => _then(v as _Todos));

  @override
  _Todos get _value => super._value as _Todos;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_Todos(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Home>,
    ));
  }
}

/// @nodoc

class _$_Todos implements _Todos {
  const _$_Todos({this.todos = const <Home>[]});

  @JsonKey(defaultValue: const <Home>[])
  @override
  final List<Home> todos;

  @override
  String toString() {
    return 'Todos(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todos &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$TodosCopyWith<_Todos> get copyWith =>
      __$TodosCopyWithImpl<_Todos>(this, _$identity);
}

abstract class _Todos implements Todos {
  const factory _Todos({List<Home> todos}) = _$_Todos;

  @override
  List<Home> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodosCopyWith<_Todos> get copyWith => throw _privateConstructorUsedError;
}

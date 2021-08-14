// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'TodosModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodosModelTearOff {
  const _$TodosModelTearOff();

  _TodosModel call({List<HomeModel> todos = const <HomeModel>[]}) {
    return _TodosModel(
      todos: todos,
    );
  }
}

/// @nodoc
const $TodosModel = _$TodosModelTearOff();

/// @nodoc
mixin _$TodosModel {
  List<HomeModel> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodosModelCopyWith<TodosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosModelCopyWith<$Res> {
  factory $TodosModelCopyWith(
          TodosModel value, $Res Function(TodosModel) then) =
      _$TodosModelCopyWithImpl<$Res>;
  $Res call({List<HomeModel> todos});
}

/// @nodoc
class _$TodosModelCopyWithImpl<$Res> implements $TodosModelCopyWith<$Res> {
  _$TodosModelCopyWithImpl(this._value, this._then);

  final TodosModel _value;
  // ignore: unused_field
  final $Res Function(TodosModel) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ));
  }
}

/// @nodoc
abstract class _$TodosModelCopyWith<$Res> implements $TodosModelCopyWith<$Res> {
  factory _$TodosModelCopyWith(
          _TodosModel value, $Res Function(_TodosModel) then) =
      __$TodosModelCopyWithImpl<$Res>;
  @override
  $Res call({List<HomeModel> todos});
}

/// @nodoc
class __$TodosModelCopyWithImpl<$Res> extends _$TodosModelCopyWithImpl<$Res>
    implements _$TodosModelCopyWith<$Res> {
  __$TodosModelCopyWithImpl(
      _TodosModel _value, $Res Function(_TodosModel) _then)
      : super(_value, (v) => _then(v as _TodosModel));

  @override
  _TodosModel get _value => super._value as _TodosModel;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodosModel(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ));
  }
}

/// @nodoc

class _$_TodosModel implements _TodosModel {
  const _$_TodosModel({this.todos = const <HomeModel>[]});

  @JsonKey(defaultValue: const <HomeModel>[])
  @override
  final List<HomeModel> todos;

  @override
  String toString() {
    return 'TodosModel(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosModel &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$TodosModelCopyWith<_TodosModel> get copyWith =>
      __$TodosModelCopyWithImpl<_TodosModel>(this, _$identity);
}

abstract class _TodosModel implements TodosModel {
  const factory _TodosModel({List<HomeModel> todos}) = _$_TodosModel;

  @override
  List<HomeModel> get todos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodosModelCopyWith<_TodosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

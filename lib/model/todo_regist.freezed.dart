// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'todo_regist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoRegistTearOff {
  const _$TodoRegistTearOff();

  _TodoRegist call(
      {String id = '',
      String title = '',
      String detail = '',
      String category = '',
      DateTime? date}) {
    return _TodoRegist(
      id: id,
      title: title,
      detail: detail,
      category: category,
      date: date,
    );
  }
}

/// @nodoc
const $TodoRegist = _$TodoRegistTearOff();

/// @nodoc
mixin _$TodoRegist {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoRegistCopyWith<TodoRegist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoRegistCopyWith<$Res> {
  factory $TodoRegistCopyWith(
          TodoRegist value, $Res Function(TodoRegist) then) =
      _$TodoRegistCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String detail,
      String category,
      DateTime? date});
}

/// @nodoc
class _$TodoRegistCopyWithImpl<$Res> implements $TodoRegistCopyWith<$Res> {
  _$TodoRegistCopyWithImpl(this._value, this._then);

  final TodoRegist _value;
  // ignore: unused_field
  final $Res Function(TodoRegist) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TodoRegistCopyWith<$Res> implements $TodoRegistCopyWith<$Res> {
  factory _$TodoRegistCopyWith(
          _TodoRegist value, $Res Function(_TodoRegist) then) =
      __$TodoRegistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String detail,
      String category,
      DateTime? date});
}

/// @nodoc
class __$TodoRegistCopyWithImpl<$Res> extends _$TodoRegistCopyWithImpl<$Res>
    implements _$TodoRegistCopyWith<$Res> {
  __$TodoRegistCopyWithImpl(
      _TodoRegist _value, $Res Function(_TodoRegist) _then)
      : super(_value, (v) => _then(v as _TodoRegist));

  @override
  _TodoRegist get _value => super._value as _TodoRegist;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_TodoRegist(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TodoRegist implements _TodoRegist {
  const _$_TodoRegist(
      {this.id = '',
      this.title = '',
      this.detail = '',
      this.category = '',
      this.date});

  @JsonKey(defaultValue: '')
  @override
  final String id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String detail;
  @JsonKey(defaultValue: '')
  @override
  final String category;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'TodoRegist(id: $id, title: $title, detail: $detail, category: $category, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoRegist &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$TodoRegistCopyWith<_TodoRegist> get copyWith =>
      __$TodoRegistCopyWithImpl<_TodoRegist>(this, _$identity);
}

abstract class _TodoRegist implements TodoRegist {
  const factory _TodoRegist(
      {String id,
      String title,
      String detail,
      String category,
      DateTime? date}) = _$_TodoRegist;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get detail => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TodoRegistCopyWith<_TodoRegist> get copyWith =>
      throw _privateConstructorUsedError;
}

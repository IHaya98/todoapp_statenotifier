// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'BottomNavigationModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavigationModelTearOff {
  const _$BottomNavigationModelTearOff();

  _BottomNavigationModel call({int selectedTabIndex = 0, String title = ''}) {
    return _BottomNavigationModel(
      selectedTabIndex: selectedTabIndex,
      title: title,
    );
  }
}

/// @nodoc
const $BottomNavigationModel = _$BottomNavigationModelTearOff();

/// @nodoc
mixin _$BottomNavigationModel {
  int get selectedTabIndex => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationModelCopyWith<BottomNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationModelCopyWith<$Res> {
  factory $BottomNavigationModelCopyWith(BottomNavigationModel value,
          $Res Function(BottomNavigationModel) then) =
      _$BottomNavigationModelCopyWithImpl<$Res>;
  $Res call({int selectedTabIndex, String title});
}

/// @nodoc
class _$BottomNavigationModelCopyWithImpl<$Res>
    implements $BottomNavigationModelCopyWith<$Res> {
  _$BottomNavigationModelCopyWithImpl(this._value, this._then);

  final BottomNavigationModel _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationModel) _then;

  @override
  $Res call({
    Object? selectedTabIndex = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BottomNavigationModelCopyWith<$Res>
    implements $BottomNavigationModelCopyWith<$Res> {
  factory _$BottomNavigationModelCopyWith(_BottomNavigationModel value,
          $Res Function(_BottomNavigationModel) then) =
      __$BottomNavigationModelCopyWithImpl<$Res>;
  @override
  $Res call({int selectedTabIndex, String title});
}

/// @nodoc
class __$BottomNavigationModelCopyWithImpl<$Res>
    extends _$BottomNavigationModelCopyWithImpl<$Res>
    implements _$BottomNavigationModelCopyWith<$Res> {
  __$BottomNavigationModelCopyWithImpl(_BottomNavigationModel _value,
      $Res Function(_BottomNavigationModel) _then)
      : super(_value, (v) => _then(v as _BottomNavigationModel));

  @override
  _BottomNavigationModel get _value => super._value as _BottomNavigationModel;

  @override
  $Res call({
    Object? selectedTabIndex = freezed,
    Object? title = freezed,
  }) {
    return _then(_BottomNavigationModel(
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationModel implements _BottomNavigationModel {
  const _$_BottomNavigationModel({this.selectedTabIndex = 0, this.title = ''});

  @JsonKey(defaultValue: 0)
  @override
  final int selectedTabIndex;
  @JsonKey(defaultValue: '')
  @override
  final String title;

  @override
  String toString() {
    return 'BottomNavigationModel(selectedTabIndex: $selectedTabIndex, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BottomNavigationModel &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTabIndex, selectedTabIndex)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedTabIndex) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$BottomNavigationModelCopyWith<_BottomNavigationModel> get copyWith =>
      __$BottomNavigationModelCopyWithImpl<_BottomNavigationModel>(
          this, _$identity);
}

abstract class _BottomNavigationModel implements BottomNavigationModel {
  const factory _BottomNavigationModel({int selectedTabIndex, String title}) =
      _$_BottomNavigationModel;

  @override
  int get selectedTabIndex => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BottomNavigationModelCopyWith<_BottomNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

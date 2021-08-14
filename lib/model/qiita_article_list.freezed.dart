// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'qiita_article_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesList _$ArticlesListFromJson(Map<String, dynamic> json) {
  return _ArticlesList.fromJson(json);
}

/// @nodoc
class _$ArticlesListTearOff {
  const _$ArticlesListTearOff();

  _ArticlesList call(
      {dynamic articles = const [], bool hasNext = true, String keyword = ''}) {
    return _ArticlesList(
      articles: articles,
      hasNext: hasNext,
      keyword: keyword,
    );
  }

  ArticlesList fromJson(Map<String, Object> json) {
    return ArticlesList.fromJson(json);
  }
}

/// @nodoc
const $ArticlesList = _$ArticlesListTearOff();

/// @nodoc
mixin _$ArticlesList {
  dynamic get articles => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesListCopyWith<ArticlesList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesListCopyWith<$Res> {
  factory $ArticlesListCopyWith(
          ArticlesList value, $Res Function(ArticlesList) then) =
      _$ArticlesListCopyWithImpl<$Res>;
  $Res call({dynamic articles, bool hasNext, String keyword});
}

/// @nodoc
class _$ArticlesListCopyWithImpl<$Res> implements $ArticlesListCopyWith<$Res> {
  _$ArticlesListCopyWithImpl(this._value, this._then);

  final ArticlesList _value;
  // ignore: unused_field
  final $Res Function(ArticlesList) _then;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticlesListCopyWith<$Res>
    implements $ArticlesListCopyWith<$Res> {
  factory _$ArticlesListCopyWith(
          _ArticlesList value, $Res Function(_ArticlesList) then) =
      __$ArticlesListCopyWithImpl<$Res>;
  @override
  $Res call({dynamic articles, bool hasNext, String keyword});
}

/// @nodoc
class __$ArticlesListCopyWithImpl<$Res> extends _$ArticlesListCopyWithImpl<$Res>
    implements _$ArticlesListCopyWith<$Res> {
  __$ArticlesListCopyWithImpl(
      _ArticlesList _value, $Res Function(_ArticlesList) _then)
      : super(_value, (v) => _then(v as _ArticlesList));

  @override
  _ArticlesList get _value => super._value as _ArticlesList;

  @override
  $Res call({
    Object? articles = freezed,
    Object? hasNext = freezed,
    Object? keyword = freezed,
  }) {
    return _then(_ArticlesList(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hasNext: hasNext == freezed
          ? _value.hasNext
          : hasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticlesList implements _ArticlesList {
  const _$_ArticlesList(
      {this.articles = const [], this.hasNext = true, this.keyword = ''});

  factory _$_ArticlesList.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticlesListFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final dynamic articles;
  @JsonKey(defaultValue: true)
  @override
  final bool hasNext;
  @JsonKey(defaultValue: '')
  @override
  final String keyword;

  @override
  String toString() {
    return 'ArticlesList(articles: $articles, hasNext: $hasNext, keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticlesList &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)) &&
            (identical(other.hasNext, hasNext) ||
                const DeepCollectionEquality()
                    .equals(other.hasNext, hasNext)) &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality().equals(other.keyword, keyword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articles) ^
      const DeepCollectionEquality().hash(hasNext) ^
      const DeepCollectionEquality().hash(keyword);

  @JsonKey(ignore: true)
  @override
  _$ArticlesListCopyWith<_ArticlesList> get copyWith =>
      __$ArticlesListCopyWithImpl<_ArticlesList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticlesListToJson(this);
  }
}

abstract class _ArticlesList implements ArticlesList {
  const factory _ArticlesList(
      {dynamic articles, bool hasNext, String keyword}) = _$_ArticlesList;

  factory _ArticlesList.fromJson(Map<String, dynamic> json) =
      _$_ArticlesList.fromJson;

  @override
  dynamic get articles => throw _privateConstructorUsedError;
  @override
  bool get hasNext => throw _privateConstructorUsedError;
  @override
  String get keyword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticlesListCopyWith<_ArticlesList> get copyWith =>
      throw _privateConstructorUsedError;
}

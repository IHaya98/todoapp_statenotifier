// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qiita_article_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesList _$_$_ArticlesListFromJson(Map<String, dynamic> json) {
  return _$_ArticlesList(
    articles: json['articles'] ?? [],
    hasNext: json['hasNext'] as bool? ?? true,
    keyword: json['keyword'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ArticlesListToJson(_$_ArticlesList instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'hasNext': instance.hasNext,
      'keyword': instance.keyword,
    };

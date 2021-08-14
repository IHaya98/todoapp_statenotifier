import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_article_list.freezed.dart';
part 'qiita_article_list.g.dart';

@freezed
abstract class ArticlesList with _$ArticlesList {
  const factory ArticlesList({
    @Default([]) dynamic articles,
    @Default(true) bool hasNext,
    @Default('') String keyword,
  }) = _ArticlesList;

  factory ArticlesList.fromJson(Map<String, dynamic> json) =>
      _$ArticlesListFromJson(json);
}

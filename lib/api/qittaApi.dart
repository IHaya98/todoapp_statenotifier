import 'package:dio/dio.dart';
import 'package:todoapp/model/qiita_article.dart';

class QiitaApiClient {
  dynamic fetchArticles(int page, String keyword) async {
    final response = await Dio().get(
      'https://qiita.com/api/v2/items',
      queryParameters: {
        'page': page,
        'per_page': 20,
        if (keyword != '') 'query': 'body:$keyword or tag:$keyword',
      },
    );

    var articles = response.data
        .map((dynamic i) => QiitaArticle.fromJson(i as Map<String, dynamic>))
        .toList();

    return articles;
  }
}

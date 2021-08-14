import 'package:todoapp/api/qittaApi.dart';

class ArticleRepository {
  final _api = QiitaApiClient();

  dynamic fetchArticles(int page, String keyword) async {
    return await _api.fetchArticles(page, keyword);
  }
}

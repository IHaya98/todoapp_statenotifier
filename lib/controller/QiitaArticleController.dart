import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/qiita_article_list.dart';
import 'package:todoapp/repository/qittaRepo.dart';

final articleProvider = StateNotifierProvider(
  (_) => ArticleController(
    ArticleRepository(),
  ),
);

class ArticleController extends StateNotifier<ArticlesList> {
  ArticleController(this.repository) : super(ArticlesList()) {
    getArticles();
  }

  final ArticleRepository repository;

  int _page = 1;
  bool _isLoading = false;

  Future<void> getArticles() async {
    if (_isLoading || !state.hasNext) {
      return;
    }

    _isLoading = true;

    final articles = await repository.fetchArticles(_page, state.keyword);
    final newArticles = [...state.articles, ...articles];

    if (articles.length % 20 != 0 || articles.length == 0) {
      state = state.copyWith(
        hasNext: false,
      );
    }

    state = state.copyWith(
      articles: newArticles,
    );

    _page++;
    _isLoading = false;
  }

  Future<void> setQuery(String keyword) async {
    state = state.copyWith(
      articles: [],
      keyword: keyword,
      hasNext: true,
    );

    _page = 1;
  }

  Future<void> refreshArticles() async {
    state = state.copyWith(
      articles: [],
      hasNext: true,
    );

    _page = 1;

    this.getArticles();
  }
}

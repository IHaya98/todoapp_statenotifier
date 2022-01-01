import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/search.dart';

final searchProvider = StateNotifierProvider<SearchController, Search>(
    (ref) => SearchController());

class SearchController extends StateNotifier<Search> {
  SearchController()
      : super(const Search(title: '', detail: '', isFavorite: false));
}

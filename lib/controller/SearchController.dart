import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/SearchModel.dart';

final searchProvider = StateNotifierProvider<SearchController, SearchModel>(
    (ref) => SearchController());

class SearchController extends StateNotifier<SearchModel> {
  SearchController()
      : super(SearchModel(title: '', detail: '', isFavorite: false));
}

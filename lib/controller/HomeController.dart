import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/HomeModel.dart';

final homeProvider =
    StateNotifierProvider<HomeController, HomeModel>((ref) => HomeController());

class HomeController extends StateNotifier<HomeModel> {
  HomeController() : super(HomeModel(title: '', detail: '', isFavorite: false));

  HomeModel set(String title, String detail) {
    state = state.copyWith(title: title, detail: detail);
    return state;
  }
}

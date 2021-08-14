import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/home.dart';

final homeProvider =
    StateNotifierProvider<HomeController, Home>((ref) => HomeController());

class HomeController extends StateNotifier<Home> {
  HomeController() : super(Home(title: '', detail: '', isFavorite: false));

  Home set(String title, String detail) {
    state = state.copyWith(title: title, detail: detail);
    return state;
  }
}

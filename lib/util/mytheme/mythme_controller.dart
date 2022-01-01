import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/util/mytheme/mytheme.dart';

final themeProvider = StateNotifierProvider<MyThemeController, MyThemeModel>(
    (ref) => MyThemeController());

class MyThemeController extends StateNotifier<MyThemeModel> {
  MyThemeController()
      : super(MyThemeModel(current: ThemeData.light(), isDark: false));

  void toggle() {
    state = state.copyWith(
      isDark: !state.isDark,
      current: !state.isDark ? ThemeData.dark() : ThemeData.light(),
    );
  }
}

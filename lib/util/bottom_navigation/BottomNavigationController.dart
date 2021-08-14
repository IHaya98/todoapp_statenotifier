import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/util/bottom_navigation/BottomNavigationModel.dart';

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationController, BottomNavigationModel>(
        (ref) => BottomNavigationController());

class BottomNavigationController extends StateNotifier<BottomNavigationModel> {
  BottomNavigationController()
      : super(BottomNavigationModel(selectedTabIndex: 0, title: 'ホーム'));

  void onTabTapped(int index) {
    String _title = '';
    switch (index) {
      case 0:
        _title = 'ホーム';
        break;
      case 1:
        _title = '検索';
        break;
      case 2:
        _title = 'お気に入り';
        break;
      case 3:
        _title = 'Qitta';
        break;
    }
    state = state.copyWith(selectedTabIndex: index, title: _title);
  }
}

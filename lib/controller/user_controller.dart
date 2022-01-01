import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/user.dart';

final userProvider =
    StateNotifierProvider<UserController, User>((ref) => UserController());

class UserController extends StateNotifier<User> {
  UserController() : super(const User(email: '', userid: '', username: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setUserid(String value) {
    state = state.copyWith(userid: value);
  }

  void setUsername(String value) {
    state = state.copyWith(username: value);
  }
}

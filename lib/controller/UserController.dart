import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/UserModel.dart';

final userProvider =
    StateNotifierProvider<UserController, UserModel>((ref) => UserController());

class UserController extends StateNotifier<UserModel> {
  UserController() : super(UserModel(email: '', user_id: '', user_name: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setUser_id(String value) {
    state = state.copyWith(user_id: value);
  }

  void setUser_name(String value) {
    state = state.copyWith(user_name: value);
  }
}

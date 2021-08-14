import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/signup.dart';

final signupProvider = StateNotifierProvider<SignupController, Signup>(
    (ref) => SignupController());

class SignupController extends StateNotifier<Signup> {
  SignupController() : super(Signup(email: '', password: '', user_name: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setPassword(String value) {
    state = state.copyWith(password: value);
  }

  void setUser_name(String value) {
    state = state.copyWith(user_name: value);
  }
}

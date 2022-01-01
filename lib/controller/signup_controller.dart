import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/signup.dart';

final signupProvider = StateNotifierProvider<SignupController, Signup>(
    (ref) => SignupController());

class SignupController extends StateNotifier<Signup> {
  SignupController()
      : super(const Signup(email: '', password: '', username: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setPassword(String value) {
    state = state.copyWith(password: value);
  }

  void setUsername(String value) {
    state = state.copyWith(username: value);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/signin.dart';

final signinProvider = StateNotifierProvider<SigninController, Signin>(
    (ref) => SigninController());

class SigninController extends StateNotifier<Signin> {
  SigninController() : super(Signin(email: '', password: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setPassword(String value) {
    state = state.copyWith(password: value);
  }
}

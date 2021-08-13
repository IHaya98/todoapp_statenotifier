import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/SigninModel.dart';

final signinProvider = StateNotifierProvider<SigninController, SigninModel>(
    (ref) => SigninController());

class SigninController extends StateNotifier<SigninModel> {
  SigninController() : super(SigninModel(email: '', password: ''));

  void setEmail(String value) {
    state = state.copyWith(email: value);
  }

  void setPassword(String value) {
    state = state.copyWith(password: value);
  }
}

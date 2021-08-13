import 'package:freezed_annotation/freezed_annotation.dart';

part 'SigninModel.freezed.dart';

@freezed
abstract class SigninModel with _$SigninModel {
  const factory SigninModel({
    @Default('') String email,
    @Default('') String password,
  }) = _SigninModel;
}

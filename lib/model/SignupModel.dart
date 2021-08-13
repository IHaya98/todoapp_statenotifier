import 'package:freezed_annotation/freezed_annotation.dart';

part 'SignupModel.freezed.dart';

@freezed
abstract class SignupModel with _$SignupModel {
  const factory SignupModel({
    @Default('') String email,
    @Default('') String user_name,
    @Default('') String password,
  }) = _SignupModel;
}

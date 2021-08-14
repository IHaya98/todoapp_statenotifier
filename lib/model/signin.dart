import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin.freezed.dart';

@freezed
abstract class Signin with _$Signin {
  const factory Signin({
    @Default('') String email,
    @Default('') String password,
  }) = _Signin;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup.freezed.dart';

@freezed
abstract class Signup with _$Signup {
  const factory Signup({
    @Default('') String email,
    @Default('') String username,
    @Default('') String password,
  }) = _Signup;
}

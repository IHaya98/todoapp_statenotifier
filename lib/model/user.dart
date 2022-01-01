import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String email,
    @Default('') String userid,
    @Default('') String username,
  }) = _User;
}

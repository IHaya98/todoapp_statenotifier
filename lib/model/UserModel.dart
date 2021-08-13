import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserModel.freezed.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String email,
    @Default('') String user_id,
    @Default('') String user_name,
  }) = _UserModel;
}

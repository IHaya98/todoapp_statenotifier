import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.freezed.dart';

@freezed
abstract class Home with _$Home {
  const factory Home({
    @Default('') String title,
    @Default('') String detail,
    @Default(false) bool isFavorite,
  }) = _Home;
}

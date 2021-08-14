import 'package:freezed_annotation/freezed_annotation.dart';

part 'HomeModel.freezed.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    @Default('') String title,
    @Default('') String detail,
    @Default(false) bool isFavorite,
  }) = _HomeModel;
}

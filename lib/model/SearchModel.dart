import 'package:freezed_annotation/freezed_annotation.dart';

part 'SearchModel.freezed.dart';

@freezed
abstract class SearchModel with _$SearchModel {
  const factory SearchModel({
    @Default('') String title,
    @Default('') String detail,
    @Default(false) bool isFavorite,
  }) = _SearchModel;
}

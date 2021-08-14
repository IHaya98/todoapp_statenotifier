import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
abstract class Search with _$Search {
  const factory Search({
    @Default('') String title,
    @Default('') String detail,
    @Default(false) bool isFavorite,
  }) = _Search;
}

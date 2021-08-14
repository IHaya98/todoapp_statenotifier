import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_regist.freezed.dart';

@freezed
abstract class TodoRegist with _$TodoRegist {
  const factory TodoRegist({
    @Default('') String id,
    @Default('') String title,
    @Default('') String detail,
    @Default('') String category,
    DateTime? date,
  }) = _TodoRegist;
}

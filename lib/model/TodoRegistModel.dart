import 'package:freezed_annotation/freezed_annotation.dart';

part 'TodoRegistModel.freezed.dart';

@freezed
abstract class TodoRegistModel with _$TodoRegistModel {
  const factory TodoRegistModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String detail,
    @Default('') String category,
    DateTime? date,
  }) = _TodoRegistModel;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'CounterModel.freezed.dart';

@freezed
abstract class CounterModel with _$CounterModel {
  const factory CounterModel({
    @Default(0) int count,
    @Default(false) bool isEnabled,
  }) = _CounterModel;
}

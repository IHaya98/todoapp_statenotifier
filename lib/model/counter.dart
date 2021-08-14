import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';

@freezed
abstract class Counter with _$Counter {
  const factory Counter({
    @Default(0) int count,
    @Default(false) bool isEnabled,
  }) = _Counter;
}

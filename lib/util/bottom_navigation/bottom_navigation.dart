import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation.freezed.dart';

@freezed
abstract class BottomNavigationModel with _$BottomNavigationModel {
  const factory BottomNavigationModel({
    @Default(0) int selectedTabIndex,
    @Default('') String title,
  }) = _BottomNavigationModel;
}

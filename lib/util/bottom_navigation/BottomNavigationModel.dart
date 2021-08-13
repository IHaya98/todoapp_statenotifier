import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'BottomNavigationModel.freezed.dart';

@freezed
abstract class BottomNavigationModel with _$BottomNavigationModel {
  const factory BottomNavigationModel({
    @Default(0) int selectedTabIndex,
    @Default('') String title,
  }) = _BottomNavigationModel;
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mytheme.freezed.dart';

@freezed
abstract class MyThemeModel with _$MyThemeModel {
  const factory MyThemeModel({
    ThemeData? current,
    @Default(false) bool isDark,
  }) = _MyThemeModel;
}

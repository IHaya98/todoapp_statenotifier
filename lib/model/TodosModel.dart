import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/model/HomeModel.dart';

part 'TodosModel.freezed.dart';

@freezed
abstract class TodosModel with _$TodosModel {
  const factory TodosModel({
    @Default(<HomeModel>[]) List<HomeModel> todos,
  }) = _TodosModel;
}

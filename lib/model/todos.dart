import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/model/home.dart';

part 'todos.freezed.dart';

@freezed
abstract class Todos with _$Todos {
  const factory Todos({
    @Default(<Home>[]) List<Home> todos,
  }) = _Todos;
}

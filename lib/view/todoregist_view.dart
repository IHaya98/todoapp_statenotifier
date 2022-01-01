import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/todoregist_controller.dart';
import 'package:todoapp/repository/fs_todo.dart';

// Since the state was moved to the view model, this is now a StatelessWidget.
class TodoRegistView extends StatelessWidget {
  TodoRegistView({Key? key}) : super(key: key);

  static Route<dynamic> route(BuildContext context) {
    context.read(todoRegistProvider.notifier).init();
    return MaterialPageRoute<dynamic>(
      builder: (_) => TodoRegistView(),
      fullscreenDialog: true,
    );
  }

  static Route<dynamic> routeUpdate(BuildContext context, String id,
      String title, String detail, Timestamp date, String category) {
    context.read(todoRegistProvider.notifier).init();
    context
        .read(todoRegistProvider.notifier)
        .update(id, title, detail, date.toDate(), category);
    return MaterialPageRoute<dynamic>(
      builder: (_) => TodoRegistView(),
      fullscreenDialog: true,
    );
  }

  final format = DateFormat("yyyy年MM月dd日");
  @override
  Widget build(BuildContext context) {
    List<String> _dropDownMenu = ['', '課題', '要望', 'タスク'];
    return Scaffold(
      appBar: AppBar(
        title: context.read(todoRegistProvider).title == ''
            ? const Text('新規')
            : const Text('更新'),
        actions: [
          TextButton(
            onPressed: () {
              FSTodo().registTodo(
                  context.read(todoRegistProvider).id,
                  context.read(todoRegistProvider).title,
                  context.read(todoRegistProvider).detail,
                  context.read(todoRegistProvider).date,
                  context.read(todoRegistProvider).category,
                  context);
            },
            child: context.read(todoRegistProvider).title == ''
                ? const Text('追加する')
                : const Text('更新する'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 350,
              child: DateTimeField(
                decoration: const InputDecoration(
                  labelText: '日付',
                  icon: Icon(Icons.calendar_today),
                ),
                initialValue: context.read(todoRegistProvider).date,
                format: format,
                onShowPicker: (context, currentValue) async {
                  final date = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100));
                  // if (date != null) {
                  //   final time = await showTimePicker(
                  //     context: context,
                  //     initialTime:
                  //         TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  //   );
                  //   return DateTimeField.combine(date, time);
                  // } else {
                  if (date != null) {
                    context.read(todoRegistProvider.notifier).setDate(date);
                  }
                  return date;
                  // }
                },
              ),
            ),
            Container(
              width: 350,
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.category),
                  labelText: 'カテゴリー',
                ),
                value: context.read(todoRegistProvider).category,
                onChanged: (newValue) {
                  context
                      .read(todoRegistProvider.notifier)
                      .setCategory(newValue.toString());
                },
                items:
                    _dropDownMenu.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Container(
              width: 350,
              child: TextFormField(
                  initialValue: context.read(todoRegistProvider).title,
                  decoration: const InputDecoration(
                    labelText: 'タイトル',
                    icon: Icon(Icons.title),
                  ),
                  validator: (value) => value!.isEmpty ? 'タイトルは必須項目' : null,
                  onChanged: (value) => context
                      .read(todoRegistProvider.notifier)
                      .setTitle(value)),
            ),
            Container(
              width: 350,
              child: TextFormField(
                  initialValue: context.read(todoRegistProvider).detail,
                  decoration: const InputDecoration(
                    labelText: 'TODO',
                    hintText: '何をする？',
                    icon: Icon(Icons.subtitles),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  validator: (value) => value!.isEmpty ? 'Todoは必須項目' : null,
                  onChanged: (value) => context
                      .read(todoRegistProvider.notifier)
                      .setDetail(value)),
            ),
          ],
        ),
      ),
    );
  }
}

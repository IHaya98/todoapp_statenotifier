import 'package:todoapp/controller/HomeController.dart';
import 'package:todoapp/controller/TodosController.dart';
import 'package:todoapp/controller/UserController.dart';
import 'package:todoapp/model/HomeModel.dart';
import 'package:todoapp/view/MainView.dart';
import 'package:uuid/uuid.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FSTodo {
  final _fs_todo = FirebaseFirestore.instance.collection('todo');

  Future<void> registTodo(String id, String title, String detail,
      DateTime? date, String? category, BuildContext context) {
    if (id == '') {
      id = Uuid().v1();
    }
    return _fs_todo
        .doc(id)
        .set({
          'id': id,
          'user_id': context.read(userProvider).user_id,
          'title': title,
          'detail': detail,
          'deadline': date,
          'category': category,
          'created_dt': Timestamp.now()
        })
        .then((value) => {
              Navigator.of(context).pop(
                MainView.route(),
              ),
            })
        .catchError((error) => print(error));
  }

  //未使用
  Future<void> readTodo(List<HomeModel> todoList, BuildContext context) {
    return _fs_todo
        .get()
        .then(
          (QuerySnapshot snapshots) => {
            snapshots.docs.forEach(
              (snapshot) => {
                todoList.add(
                  context.read(homeProvider.notifier).set(
                        snapshot['title'],
                        snapshot['detail'],
                      ),
                ),
              },
            ),
            context.read(todosProvider.notifier).setTodos(todoList),
            print(todoList),
          },
        )
        .catchError((error) => print(error));
  }

  Future<void> deleteTodo(String id, BuildContext context) {
    if (id == null) {
      print("ID IS NULL");
    }
    return _fs_todo
        .doc(id)
        .delete()
        .then((value) => print("Todo Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  Future<void> addFavorite(String id, String user_id) {
    if (id == null) {
      print("ID IS NULL");
    }
    return _fs_todo
        .doc(id)
        .collection('favorite')
        .doc(user_id)
        .set({
          'id': id,
          'user_id': user_id,
          'created_dt': Timestamp.now(),
        })
        .then((value) => print("favorite added"))
        .catchError((error) => print("Failed to favorite add: $error"));
  }

  Future<void> deleteFavorite(String id, String user_id) {
    if (id == null) {
      print("ID IS NULL");
    }
    return _fs_todo
        .doc(id)
        .collection('favorite')
        .doc(user_id)
        .delete()
        .then((value) => print("favorite deleted"))
        .catchError((error) => print("Failed to favorite deleted: $error"));
  }
}

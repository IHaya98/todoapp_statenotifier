// ignore_for_file: avoid_print

import 'package:todoapp/controller/home_controller.dart';
import 'package:todoapp/controller/todos_controller.dart';
import 'package:todoapp/controller/user_controller.dart';
import 'package:todoapp/model/home.dart';
import 'package:todoapp/view/main_view.dart';
import 'package:uuid/uuid.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FSTodo {
  final _fstodo = FirebaseFirestore.instance.collection('todo');

  Future<void> registTodo(String id, String title, String detail,
      DateTime? date, String? category, BuildContext context) {
    if (id == '') {
      id = const Uuid().v1();
    }
    return _fstodo
        .doc(id)
        .set({
          'id': id,
          'user_id': context.read(userProvider).userid,
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
  Future<void> readTodo(List<Home> todoList, BuildContext context) {
    return _fstodo
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
    if (id.isEmpty) {
      print("ID IS NULL");
    }
    return _fstodo
        .doc(id)
        .delete()
        .then((value) => print("Todo Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }

  Future<void> addFavorite(String id, String userId) {
    if (id.isEmpty) {
      print("ID IS NULL");
    }
    return _fstodo
        .doc(id)
        .collection('favorite')
        .doc(userId)
        .set({
          'id': id,
          'user_id': userId,
          'created_dt': Timestamp.now(),
        })
        .then((value) => print("favorite added"))
        .catchError((error) => print("Failed to favorite add: $error"));
  }

  Future<void> deleteFavorite(String id, String userId) {
    if (id.isEmpty) {
      print("ID IS NULL");
    }
    return _fstodo
        .doc(id)
        .collection('favorite')
        .doc(userId)
        .delete()
        .then((value) => print("favorite deleted"))
        .catchError((error) => print("Failed to favorite deleted: $error"));
  }
}

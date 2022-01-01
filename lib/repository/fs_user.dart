// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/user_controller.dart';
import 'package:todoapp/view/signin_view.dart';
import 'package:uuid/uuid.dart';

class FSUser {
  final _fsuser = FirebaseFirestore.instance.collection('user');

  Future<void> registUser(String email, String username, BuildContext context) {
    String userid = const Uuid().v1();
    return _fsuser
        .doc(userid)
        .set({
          'userid': userid,
          'email': email,
          'username': username,
          'created_dt': Timestamp.now()
        })
        .then((value) => {
              context.read(userProvider.notifier).setEmail(email),
              context.read(userProvider.notifier).setUserid(userid),
              context.read(userProvider.notifier).setUsername(username),
              Navigator.of(context).pop(
                SigninView.route(),
              ),
            })
        .catchError((error) => print(error));
  }

  //未使用
  Future<void> readUser(String? email, BuildContext context) {
    email ??= context.read(userProvider).email;

    QueryDocumentSnapshot<Object?> data;
    return _fsuser
        .where('email', isEqualTo: email)
        .get()
        .then(
          (QuerySnapshot snapshot) => {
            data = snapshot.docs[0],
            context.read(userProvider.notifier).setEmail(data['email']),
            context.read(userProvider.notifier).setUserid(data['userid']),
            context.read(userProvider.notifier).setUsername(data['username']),
          },
        )
        .catchError((error) => print(error));
  }
}

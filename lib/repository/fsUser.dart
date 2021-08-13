import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/UserController.dart';
import 'package:todoapp/view/SigninView.dart';
import 'package:uuid/uuid.dart';

class FSUser {
  final _fs_user = FirebaseFirestore.instance.collection('user');

  Future<void> registUser(
      String email, String user_name, BuildContext context) {
    String user_id = Uuid().v1();
    return _fs_user
        .doc(user_id)
        .set({
          'user_id': user_id,
          'email': email,
          'user_name': user_name,
          'created_dt': Timestamp.now()
        })
        .then((value) => {
              context.read(userProvider.notifier).setEmail(email),
              context.read(userProvider.notifier).setUser_id(user_id),
              context.read(userProvider.notifier).setUser_name(user_name),
              Navigator.of(context).pop(
                SigninView.route(),
              ),
            })
        .catchError((error) => print(error));
  }

  //未使用
  Future<void> readUser(String? email, BuildContext context) {
    if (email == null) {
      email = context.read(userProvider).email;
    }
    QueryDocumentSnapshot<Object?> data;
    return _fs_user
        .where('email', isEqualTo: email)
        .get()
        .then(
          (QuerySnapshot snapshot) => {
            data = snapshot.docs[0],
            context.read(userProvider.notifier).setEmail(data['email']),
            context.read(userProvider.notifier).setUser_id(data['user_id']),
            context.read(userProvider.notifier).setUser_name(data['user_name']),
          },
        )
        .catchError((error) => print(error));
  }
}

// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/repository/fs_user.dart';
import 'package:todoapp/view/main_view.dart';
import 'package:todoapp/view/signin_view.dart';

class FBAuth {
  final _auth = FirebaseAuth.instance;

  Future<void> signUp(String email, String username, String password,
      BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await FSUser().registUser(email, username, context);
      Navigator.of(context).push(
        SigninView.route(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signIn(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      await FSUser().readUser(email, context);
      Navigator.of(context).pushReplacement(
        MainView.route(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> signOut(BuildContext context) async {
    await _auth.signOut();
    Navigator.of(context)
        .pushAndRemoveUntil(SigninView.route(), (route) => false);
  }

  Future<bool> checkAuth(BuildContext context) async {
    final currentUser = _auth.currentUser;
    if (currentUser == null) {
      return false;
    } else {
      await FSUser().readUser(currentUser.email, context);
      return true;
    }
  }
}

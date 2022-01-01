import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/repository/fb_auth.dart';
import 'package:todoapp/util/mytheme/mythme_controller.dart';
import 'package:todoapp/view/main_view.dart';
import 'package:todoapp/view/signin_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loggedIn(context);
  }

  FutureBuilder loggedIn(BuildContext context) {
    return FutureBuilder(
      future: FBAuth().checkAuth(context),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final firstScreen = snapshot.data ? MainView() : const SigninView();
        return Consumer(
          builder: (context, watch, child) {
            return MaterialApp(
              title: 'TodoApp',
              theme: watch(themeProvider).current,
              home: firstScreen,
            );
          },
        );
      },
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/repository/fbAuth.dart';
import 'package:todoapp/util/mytheme/MyThemeController.dart';
import 'package:todoapp/view/CounterView.dart';
import 'package:todoapp/view/MainView.dart';
import 'package:todoapp/view/SigninView.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.length == 0) {
    await Firebase.initializeApp();
  }

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
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
            child: const CircularProgressIndicator(),
          );
        }
        final FirstScreen = snapshot.data ? MainView() : SigninView();
        return Consumer(
          builder: (context, watch, child) {
            return MaterialApp(
              title: 'TodoApp',
              theme: watch(themeProvider).current,
              home: FirstScreen,
            );
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/repository/fb_auth.dart';
import 'package:todoapp/util/mytheme/mythme_controller.dart';
import 'package:todoapp/view/user_view.dart';

// Since the state was moved to the view model, this is now a StatelessWidget.
class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'メニュー',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text('ユーザー'),
            trailing: const Icon(Icons.supervised_user_circle),
            onTap: () {
              Navigator.of(context).push(
                UserView.route(),
              );
            },
          ),
          ListTile(
            title: const Text('ログアウト'),
            trailing: const Icon(Icons.logout),
            onTap: () {
              // Update the state of the app.
              FBAuth().signOut(context);
            },
          ),
          Consumer(
            builder: (context, watch, child) {
              return SwitchListTile(
                value: watch(themeProvider).isDark,
                title: const Text('ダークモード'),
                onChanged: (value) =>
                    {context.read(themeProvider.notifier).toggle()},
              );
            },
          ),
        ],
      ),
    );
  }
}

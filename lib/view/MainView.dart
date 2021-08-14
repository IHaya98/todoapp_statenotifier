import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/util/bottom_navigation/BottomNavigationController.dart';
import 'package:todoapp/util/bottom_navigation/BottomNavigationView.dart';
import 'package:todoapp/util/drawer/DrawerView.dart';
import 'package:todoapp/view/CounterView.dart';
import 'package:todoapp/view/HomeView.dart';
import 'package:todoapp/view/SearchView.dart';

import 'QiitaArticleView.dart';

// Since the state was moved to the view model, this is now a StatelessWidget.
class MainView extends StatelessWidget {
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => MainView(),
    );
  }

  static List<Widget> _pageList = [
    HomeView(),
    SearchView(),
    CoutnerView(),
    ArticlesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer(
          builder: (context, watch, child) {
            return Text(watch(bottomNavigationProvider).title == ''
                ? 'ホーム'
                : watch(bottomNavigationProvider).title);
          },
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: Text('更新する'),
        //     style: TextButton.styleFrom(
        //       primary: Colors.white,
        //     ),
        //   ),
        // ],
      ),
      drawer: DrawerView(),
      body: Consumer(builder: (context, watch, child) {
        return _pageList[watch(bottomNavigationProvider).selectedTabIndex];
      }),
      bottomNavigationBar: BottomNavigationView(),
    );
  }
}
